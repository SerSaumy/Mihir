import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:cookie_jar/file_storage/cookie_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class AppHttpClient {
  late final Dio _dio;
  late final CookieJar _cookieJar;

  AppHttpClient() {
    _dio = Dio();
    _initialize();
  }

  Future<void> _initialize() async {
    final appDir = await getApplicationDocumentsDirectory();
    final cookiePath = p.join(appDir.path, 'mihir', 'cookies');
    _cookieJar = PersistCookieJar(
      storage: FileCookieStorage(cookiePath),
    );

    _dio.interceptors.add(CookieManager(_cookieJar));

    // Add logging interceptor in debug mode
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (object) {
        // TODO: Use proper logging
        print(object);
      },
    ));

    // Set default options
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      },
    );
  }

  Dio get dio => _dio;

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
