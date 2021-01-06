import 'package:json_annotation/json_annotation.dart';

part 'podcast_minimum.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastMinimum {
  /// Image url for this podcast's artwork.
  final String image;

  /// Thumbnail image url for this podcast's artwork (300x300).
  final String thumbnail;

  /// Podcast name.
  final String title;

  /// The url of this podcast on ListenNotes.com.
  final String listennotesUrl;

  final String id;

  /// Podcast publisher name.
  final String publisher;

  /// The estimated popularity score of a podcast compared to all other rss-based public podcasts in the world on a scale from 0 to 100.
  final String listenScore;

  /// The estimated popularity ranking of a podcast compared to all other rss-based public podcasts in the world.
  final String listenScoreGlobalRank;

  PodcastMinimum({
    this.image,
    this.thumbnail,
    this.title,
    this.listennotesUrl,
    this.id,
    this.publisher,
    this.listenScore,
    this.listenScoreGlobalRank,
  });

  factory PodcastMinimum.fromJson(Map<String, dynamic> json) => _$PodcastMinimumFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastMinimumToJson(this);
}