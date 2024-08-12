import 'dart:convert';

import 'package:arc_view/src/conversation/conversation.dart';
import 'package:arc_view/src/conversation/conversation_data.dart';
import 'package:file_selector/file_selector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conversation_importer.g.dart';

@riverpod
ConversationImporter conversationImporter(ConversationImporterRef ref) {
  return ConversationImporter(ref.watch(conversationProvider.notifier));
}

class ConversationImporter {
  ConversationImporter(this.conversationNotifier);

  final Conversation conversationNotifier;

  load() async {
    const XTypeGroup typeGroup = XTypeGroup(extensions: <String>['json']);
    final file = await openFile(acceptedTypeGroups: <XTypeGroup>[typeGroup]);
    if (file == null) return;
    final json = await file.readAsString();
    conversationNotifier.load(ConversationData.fromJson(jsonDecode(json)));
  }
}
