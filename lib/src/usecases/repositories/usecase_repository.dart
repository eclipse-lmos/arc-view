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

    if (!hasExample && false) {
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
### UseCase: book_service_appointment

#### Description
Customer calls to book a service appointment for their Volkswagen vehicle.

#### Solution
- Greet the customer politely and collect their identifying details (name, customer_id).
- Ask the customer for when they would like to schedule the service appointment.
- Check the desired appointment date using @check_availability().
- If available, finalize booking via @book_appointment() and confirm details.
- If unavailable, offer the next three available slots using @suggest_alternative_dates().
- Provide additional details (duration, cost, optional inspection) as requested.
- Confirm and send booking confirmation using @send_confirmation().
- Ask if they wish to receive live updates during the service.

#### Fallback Solution
If the system fails to identify the customer or vehicle after two attempts, escalate directly to a human advisor using @escalate_to_human()!.

#### Examples
- “I’d like to book a service appointment for my Volkswagen Golf.”
- “Can I get my VW serviced next Tuesday?”
- “My car’s making a strange noise — can you book a check?”
- “I need a general inspection for my Passat.”
- I need an appointment

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

### UseCase: customer_escalation
#### Description
Customer is insisting on an unavailable slot for a service appointment or is upset and /or showing signs of frustration.

#### Solution
Reply with 'AGENT_HANDOVER'.

----

### UseCase: customer_wants_live_updates
#### Description
Customer would like to receive live updates during the service.

#### Solution
Activate live updates with @subscribe_to_live_updates().

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
