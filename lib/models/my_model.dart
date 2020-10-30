import 'package:json_annotation/json_annotation.dart';

part 'my_model.g.dart';

/// This class is an example, you can remove it.
@JsonSerializable()
class MyModel {
  final int myValue;

  MyModel({
    this.myValue
  });

  factory MyModel.fromJson(Map<String, dynamic> json) => _$MyModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyModelToJson(this);
}
