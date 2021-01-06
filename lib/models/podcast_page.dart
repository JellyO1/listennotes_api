import 'package:json_annotation/json_annotation.dart';
import 'package:listennotes_api/models/page.dart';
import 'package:listennotes_api/models/podcast_simple.dart';

part 'podcast_page.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastPage extends Page {
  final List<PodcastSimple> podcasts;

  PodcastPage({
    bool hasPrevious,
    String name,
    String listennotesUrl,
    int previousPageNumber,
    int pageNumber,
    bool hasNext,
    int nextPageNumber,
    int parentId,
    int id,
    int total,
    this.podcasts,
  }) : super(
      hasPrevious: hasPrevious,
      name: name,
      listennotesUrl: listennotesUrl,
      previousPageNumber: previousPageNumber,
      pageNumber: pageNumber,
      hasNext: hasNext,
      nextPageNumber: nextPageNumber,
      parentId: parentId,
      id: id,
      total: total);

  factory PodcastPage.fromJson(Map<String, dynamic> json) => _$PodcastPageFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastPageToJson(this);
}