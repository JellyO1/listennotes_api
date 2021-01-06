import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Genre {
  @JsonKey()
  final int id;

  @JsonKey()
  final String name;

  @JsonKey()
  final int parentId;

  Genre({this.id, this.name, this.parentId});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
