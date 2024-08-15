import 'package:arc_view/src/client/system_context.dart';
import 'package:arc_view/src/client/user_context.dart';
import 'package:arc_view/src/conversation/conversation_notifier.dart';
import 'package:arc_view/src/settings/settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_notifier.g.dart';

@riverpod
class SettingsNotifier extends _$SettingsNotifier {
  @override
  Settings build() {
    return Settings(
      changed: false,
      newUserContext: null,
      newSystemContext: null,
    );
  }

  updateChanged() {
    state = state.copyWith(changed: true);
  }

  updateUserContext(String newUserContext) {
    state = state.copyWith(changed: true, newUserContext: newUserContext);
  }

  updateSystemContext(String newSystemContext) {
    state = state.copyWith(changed: true, newSystemContext: newSystemContext);
  }

  commit() {
    final conversation = ref.read(conversationNotifierProvider);

    final updatedConversation = conversation.copyWith(
      userContext: state.newUserContext == null
          ? conversation.userContext
          : UserContext.fromJson(state.newUserContext!),
      systemContext: state.newSystemContext == null
          ? conversation.systemContext
          : SystemContext.fromJson(state.newSystemContext!),
    );

    ref
        .read(conversationNotifierProvider.notifier)
        .updateConversation(updatedConversation);

    state = state.copyWith(changed: false);
  }
}
