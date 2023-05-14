// import 'package:dio/dio.dart';
// import 'package:dio_http_cache/dio_http_cache.dart';
// import '../services/api_exception.dart';
// import '../utils/api_url.dart';
// import 'base_provider.dart';

// class ApiProvider {
//   ApiProvider() : super();

//   final BaseProvider _apiService = BaseProvider();

//   Future<Map<String, dynamic>> getAllNews() async {
//     try {
//       Options getOptions = buildCacheOptions(
//         const Duration(days: 7),
//         maxStale: const Duration(days: 10),
//         forceRefresh: true,
//       );

//       final Response response = await _apiService.get(
//         ApiUrl.kNewsBaseApiUrl,
//         options: getOptions,
//       );
//       if (response.data['status'] == ApiUrl.successCode) {
//         return response.data as Map<String, dynamic>;
//       } else {
//         print("Response status ${response.data['status']}");
//       }
//     } on DioError catch (e) {
//       final ApiException apiException = ApiException.fromDioError(e);

//       print("Api Exception from Fetch news $apiException");

//       // errorSnackbar(e: apiException.toString());
//     }

//     return {'error': 'Something went wrong'};
//   }

//   Future<Map<String, dynamic>> getGeneralNews() async {
//     try {
//       Options getOptions = buildCacheOptions(
//         const Duration(days: 7),
//         maxStale: const Duration(days: 10),
//         forceRefresh: true,
//       );

//       final Response response = await _apiService.get(
//         ApiUrl.kNewsBaseApiUrl,
//         options: getOptions,
//       );
//       if (response.data['status'] == ApiUrl.successCode) {
//         return response.data as Map<String, dynamic>;
//       } else {
//         print("Response status ${response.data['status']}");
//       }
//     } on DioError catch (e) {
//       final ApiException apiException = ApiException.fromDioError(e);

//       print("Api Exception from Fetch news $apiException");

//       // errorSnackbar(e: apiException.toString());
//     }

//     return {'error': 'Something went wrong'};
//   }
// }
