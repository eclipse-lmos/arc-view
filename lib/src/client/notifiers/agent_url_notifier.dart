/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agent_url_notifier.g.dart';

typedef AgentUrlData = ({Uri url, bool secure, String? agent});

@riverpod
class AgentUrlNotifier extends _$AgentUrlNotifier {
  @override
  AgentUrlData build() {
    final queryUrl = _getQueryUrl();
    if (queryUrl != null) {
      return _fromUrl(queryUrl, null);
    }
    final storedUrl = ref.read(sharedPreferencesProvider).getString('agentUrl');
    if (storedUrl != null) {
      return _fromUrl(storedUrl, null);
    }
    final base = Uri.base;
    final url = base.isScheme('http') || base.isScheme('https')
        ? '${base.scheme}://${base.host}:${base.port}'
        : 'http://localhost:8080';
    final secure = base.isScheme('https');
    return (url: Uri.parse(url), secure: secure, agent: null);
  }

  String? _getQueryUrl() {
    try {
      if (!Uri.base.hasQuery) return null;
      final url = Uri.base.queryParameters['agentUrl'];
      return url;
    } catch (_) {}
    return null;
  }

  setUrl(String url) {
    state = _fromUrl(url, state.agent);
    ref.read(sharedPreferencesProvider).setString('agentUrl', url);
  }

  AgentUrlData _fromUrl(String url, String? agent) {
    final uri = Uri.parse(url);
    final secure = uri.isScheme('https');
    return (
      url: uri,
      secure: secure,
      agent: agent,
    );
  }

  setAgent(String agent) {
    state = (
      url: state.url,
      secure: state.secure,
      agent: agent,
    );
  }
}
