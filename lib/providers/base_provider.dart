// import 'package:dio/dio.dart';
// import 'package:dio_http_cache/dio_http_cache.dart';
// import '../utils/api_url.dart';

// class BaseProvider {
//   // BaseProvider() {
//   //   // dio = Dio(options);
//   //   dio.options = options;
//   //   dio.interceptors.add(
//   //     InterceptorsWrapper(
//   //       onRequest: (options, handler) {
//   //         print("$_tAG ~~~~~~CURRENT USER TOKEN~~~~~~ $accessToken");
//   //         if (accessToken != null) {
//   //           options.headers
//   //               .putIfAbsent('Authorization', () => 'Bearer $accessToken');
//   //         }
//   //         handler.next(options);
//   //       },
//   //     ),
//   //   );
//   // }

//   //configure Base Options
//   static final _options = BaseOptions(
//     baseUrl: ApiUrl.kNewsBaseApiUrl,
//     connectTimeout: ApiUrl.connectionTimeout,
//     receiveTimeout: ApiUrl.receiveTimeout,
//     responseType: ResponseType.json,
//   );

//   // var options = BaseOptions(
//   //   baseUrl: ApiUrl.kNewsBaseApiUrl,
//   //   connectTimeout: const Duration(
//   //     seconds: (10 * 60) * 1000,
//   //   ),
//   //   receiveTimeout: const Duration(
//   //     seconds: (10 * 60) * 1000,
//   //   ),
//   //   responseType: ResponseType.json,
//   // );

//   //creating simple dio instance
//   // final Dio _dio = Dio();

//   //creating basic dio instance + base options passed to it
//   final Dio _dio = Dio(_options)
//     ..interceptors.add(
//       LogInterceptor(),
//     );

//   //creating cache manager instance
//   DioCacheManager dioCacheManager = DioCacheManager(
//     CacheConfig(),
//   );

//   // GET request
//   Future<Response> get(
//     String url, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       _dio.interceptors.add(dioCacheManager.interceptor);

//       final Response response = await _dio.get(
//         url,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   // POST request
//   Future<Response> post(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       _dio.interceptors
//           .add(DioCacheManager(CacheConfig(baseUrl: url)).interceptor);

//       final Response response = await _dio.post(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   // PUT request
//   Future<Response> put(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       _dio.interceptors
//           .add(DioCacheManager(CacheConfig(baseUrl: url)).interceptor);

//       final Response response = await _dio.put(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   // DELETE request
//   Future<Response> delete(
//     String url, {
//     dynamic data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       _dio.interceptors
//           .add(DioCacheManager(CacheConfig(baseUrl: url)).interceptor);

//       final Response response = await _dio.delete(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
