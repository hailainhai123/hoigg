
import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable()
class BaseModel {
  final bool? success;
  final String? message;

  BaseModel(this.success, this.message);

  factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);

}