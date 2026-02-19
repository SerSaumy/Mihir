import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../http/http_client.dart';

final httpClientProvider = Provider<AppHttpClient>((ref) {
  return AppHttpClient();
});
