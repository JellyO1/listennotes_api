import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Page {
  final bool hasPrevious;
  final String name;
  /// Url of the list of best podcasts on ListenNotes.com.
  final String listennotesUrl;
  final int previousPageNumber;
  final int pageNumber;
  final bool hasNext;
  final int nextPageNumber;
  /// The id of parent genre.
  final int parentId;
  /// The id of this genre
  final int id;
  final int total;

  Page({
    this.hasPrevious,
    this.name,
    this.listennotesUrl,
    this.previousPageNumber,
    this.pageNumber,
    this.hasNext,
    this.nextPageNumber,
    this.parentId,
    this.id,
    this.total,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  Map<String, dynamic> toJson() => _$PageToJson(this);
}
