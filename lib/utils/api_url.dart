class ApiUrl {
  ApiUrl._();

  static const String apiKey = "pub_20252b359b33dbcfa022e2ca8bc5aa00f0f6b";
  static const successCode = 'success';

//API SERVICE URLS


  // receiveTimeout
  static const int receiveTimeout = 1000;

  // connectionTimeout
  static const int connectionTimeout = 1000;

  //News
  static const String kNewsBaseUrl = "https://newsdata.io/api/1/news?apikey=";
  static const String kNewsBaseApiUrl = "$kNewsBaseUrl$apiKey";

}
