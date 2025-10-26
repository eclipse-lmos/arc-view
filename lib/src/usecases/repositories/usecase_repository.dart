/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/main.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'usecase_repository.g.dart';

@riverpod
UseCaseRepository useCaseRepository(Ref ref) {
  final preferences = ref.read(sharedPreferencesProvider);
  return UseCaseRepository(preferences);
}

///
/// Repository for loading and saving usecases.
///
class UseCaseRepository {
  UseCaseRepository(this._preferences);

  final SharedPreferences _preferences;

  List<UseCase> fetch() {
    var hasExample = false;
    var useCases =
        _preferences.getStringList('usecases')?.map((e) {
          final uc = UseCase.fromJson(jsonDecode(e));
          if (uc.id == 'automobile_example_001x') {
            hasExample = true;
            return UseCase(
              id: 'automobile_example_001x',
              name: 'Automobile Example',
              description: 'Example use case for an automobile company.',
              content: examplesUseCasesKey,
              version: "1.0.0",
              readOnly: true,
              createdAt: DateTime.now(),
            );
          }
          return uc;
        }).toList() ??
        List.empty();

    if (!hasExample) {
      useCases = [
        ...useCases,
        UseCase(
          id: 'automobile_example_001x',
          name: 'Automobile Example',
          description: 'Example use case for an automobile company.',
          content: examplesUseCasesKey,
          version: "1.0.0",
          readOnly: true,
          createdAt: DateTime.now(),
        ),
      ];
    }

    return useCases
        .map(
          (e) => e.copyWith(
            id: e.id ?? '${e.name}-${DateTime.now().millisecondsSinceEpoch}',
          ),
        )
        .toList();
  }

  save(UseCases useCases) {
    _preferences.setStringList(
      'usecases',
      useCases.cases.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }
}

String examplesUseCasesKey = '''
### UseCase: book_service_appointment_vw

#### Description
Customer calls to book a service appointment for their Volkswagen vehicle. The agent must collect identifying details, understand the service request, check appointment availability, and confirm the booking. If the desired date is unavailable, the agent offers alternatives or escalates to a human advisor if necessary.

#### Steps
- Ask who is calling and which vehicle they are referring to.
- Verify the customer and their vehicle using @verify_customer_vehicle().
    - If the customer provides a license plate, use it to identify the vehicle.
    - If they don’t know the license plate, use their phone number or name to look up the record.
- Confirm the customer's name, and the vehicle make, model, and year.
- Ask what issue they are experiencing or why they want a service.
- If the customer provides a preferred date, check if it is available using @check_availability().
- If the date is available, book the appointment using @book_appointment().
- If the date is not available, offer the next three available dates using @suggest_alternative_dates().
- If the customer insists on the unavailable date, escalate to a human advisor using @escalate_to_human().
- If the customer asks about cost, provide the typical price range using @fetch_typical_service_price().
- If the car is due for a regular check, suggest adding a general inspection.
- Confirm the final appointment details (date, time, and location).
- Send confirmation via SMS and email using @send_confirmation().
- Ask if the customer would like to receive service progress updates.

#### Solution
- Greet the customer politely and collect their identifying details (license plate, name, or phone number).
- Verify the vehicle details and reason for service.
- Check the desired appointment date using @check_availability().
- If available, finalize booking via @book_appointment() and confirm details.
- If unavailable, offer the next three available slots using @suggest_alternative_dates().
- If the customer insists on the unavailable slot, trigger escalation via @escalate_to_human()!.
- Provide additional details (duration, cost, optional inspection) as requested.
- Confirm and send booking confirmation using @send_confirmation().
- Ask if they wish to receive live updates during service.

[date available] proceed with @book_appointment()

[date not available] go to case #offer_alternative_dates

[customer insists] go to case #escalate_to_human_advisor

#### Alternative Solution
If the system cannot retrieve availability information (e.g., @check_availability() fails), collect the customer’s preferred date and inform them that a human advisor will confirm availability shortly via @create_follow_up_ticket().

#### Fallback Solution
If the system fails to identify the customer or vehicle after two attempts, escalate directly to a human advisor using @escalate_to_human()!.

#### Examples
- “I’d like to book a service appointment for my Volkswagen Golf.”
- “Can I get my VW serviced next Tuesday?”
- “My car’s making a strange noise — can you book a check?”
- “I need a general inspection for my Passat.”

----

### Case: offer_alternative_dates
Offer the next three available appointment slots using @suggest_alternative_dates().
Ask which date works best for the customer.

[customer selects date] return to #book_service_appointment_vw to confirm

[none suitable] go to case #escalate_to_human_advisor

----

### Case: escalate_to_human_advisor
Politely inform the customer that the issue will be handled by a human service advisor.
Call @escalate_to_human()! to transfer the request.

----

### UseCase: ambiguous_question
#### Description
Customer is making an ambiguous statement or asking a question that is not clear.

#### Solution
Kindly ask the customer to provide more information or clarify their question.

#### Alternative Solution
Kindly tell the customer that you are still unable to understand their question and provide some examples
of use cases that you can help with.

#### Fallback Solution
Reply with 'NO_ANSWER'.

----

### UseCase: agent_handover
#### Description
Customer is requesting to speak to customer service or a real person.

#### Solution
Reply with 'AGENT_HANDOVER', but only connect them if they agree.

----

### UseCase: service_time_estimate
#### Description
Customer is asking for an estimate of how long a service will take.

#### Solution
Use the tool @fetch_typical_service_time() to provide an estimate of the service time.

----

### UseCase: accepted_answer
#### Description
The customer indicates that their question has been answered satisfactorily.

#### Solution
Reply with a thank you message.

----

### UseCase: off_topic_question
#### Description
The customer is asking a question that is off-topic and not related to the services provided.

#### Solution
Reply with 'OFF_TOPIC'.

----

''';
