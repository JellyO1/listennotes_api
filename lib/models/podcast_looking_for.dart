import 'package:json_annotation/json_annotation.dart';

part 'podcast_looking_for.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastLookingFor {
  /// Whether this podcast is looking for cohosts.
  final bool cohosts;

  /// Whether this podcast is looking for cross promotion opportunities with other podcasts.
  final bool crossPromotion;

  /// Whether this podcast is looking for sponsors.
  final bool sponsors;

  /// Whether this podcast is looking for guests.
  final bool guests;

  PodcastLookingFor({this.cohosts, this.crossPromotion, this.sponsors, this.guests});
  factory PodcastLookingFor.fromJson(Map<String, dynamic> json) => _$PodcastLookingForFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastLookingForToJson(this);
}
