class RegisterModel {
   bool? status;
  String? message;
  String? errors;

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    errors=json['errors'];
  }
}