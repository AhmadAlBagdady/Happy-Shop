class LoginModel {
  final bool? status;
  final String? message;
  final String? accessToken;

  LoginModel({
    this.status,
    this.message,
    this.accessToken,
  });

  LoginModel.fromJson(Map<String, dynamic> json)
      : status = json['status'] as bool?,
        message = json['message'] as String?,
        accessToken = json['access_token'] as String?;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'message' : message,
    'access_token' : accessToken
  };
}