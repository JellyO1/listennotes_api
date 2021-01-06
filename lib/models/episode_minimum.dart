import 'package:json_annotation/json_annotation.dart';

part 'episode_minimum.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EpisodeMinimum {
  /// Episode id
  final String id;

  /// Web link of this episode
  final String link;

  /// Audio url of this episode, which can be played directly.
  final String audio;

  /// Image url for this podcast's artwork
  final String image;

  /// Episode name
  final String title;

  /// Thumbnail image url for this podcast's artwork (300x300).
  final String thumbnail;

  /// Html of this episode's full description
  final String description;

  /// Published date for this episode. In millisecond.
  final int pubDateMs;

  /// The url of this episode on [ListenNotes.com](https://www.ListenNotes.com).
  final String listennotesUrl;

  /// "Audio length of this episode. In seconds."
  final int audioLengthSec;

  /// "Whether this podcast contains explicit language."
  final bool explicitContent;

  /// Whether or not this episode's audio is invalid. Podcasters may delete the original audio.
  final bool maybeAudioInvalid;

  /// Edit url of this episode where you can update the audio url if you find the audio is broken.
  final String listennotesEditUrl;

  EpisodeMinimum({
    this.id,
    this.link,
    this.audio,
    this.image,
    this.title,
    this.thumbnail,
    this.description,
    this.pubDateMs,
    this.listennotesUrl,
    this.audioLengthSec,
    this.explicitContent,
    this.maybeAudioInvalid,
    this.listennotesEditUrl,
  });

  factory EpisodeMinimum.fromJson(Map<String, dynamic> json) => _$EpisodeMinimumFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeMinimumToJson(this);
}
