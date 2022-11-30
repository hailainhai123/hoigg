import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  bool? success;
  String? message;
  String? validator;
  List<String>? email;

  RegisterModel({this.success, this.message, this.validator, this.email});
}
