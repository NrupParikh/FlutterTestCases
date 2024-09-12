class AppResponse {
  int result;
  int statusCode;
  String message;
  String? errorCode;
  dynamic data;

  AppResponse(
      {this.result = 0,
      this.statusCode = 0,
      this.message = "",
      this.errorCode = "",
      this.data = ""});

  factory AppResponse.userFromJson(dynamic str) {
    final jsonData = str['data'];

    return AppResponse.fromJson(jsonData);
  }

  factory AppResponse.fromJson(dynamic json) {
    return AppResponse(
        result: json["result"] ?? 0,
        statusCode: json['statusCode'] ?? 0,
        message: json['message'] ?? "",
        errorCode: json['errorCode'] ?? "",
        data: json['data'] ?? "");
  }
}
