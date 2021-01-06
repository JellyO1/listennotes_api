import 'package:json_annotation/json_annotation.dart';
import 'package:listennotes_api/models/podcast_extra.dart';
import 'package:listennotes_api/models/podcast_looking_for.dart';
import 'package:listennotes_api/models/podcast_minimum.dart';

part 'podcast_simple.g.dart';

enum PodcastType { EPISODIC, SERIAL }

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastSimple extends PodcastMinimum {
  /// Whether this podcast is claimed by its producer on ListenNotes.com.
  final bool isClaimed;

  /// The type of this podcast - episodic or serial.
  @JsonKey(fromJson: typeFromJson)
  final PodcastType type;

  /// Whether this podcast contains explicit language.
  final bool explicitContent;

  /// Website url of this podcast.
  final String website;

  /// Total number of episodes in this podcast.
  final int totalEpisodes;

  /// The published date of the oldest episode of this podcast. In milliseconds
  final int earliestPubDateMs;

  /// RSS url of this podcast. This field is available only in the PRO plan.
  final String rss;

  /// The published date of the latest episode of this podcast. In milliseconds
  final int latestPubDateMs;

  /// The language of this podcast. You can get all supported languages from GET /languages.
  final String language;

  /// Html of this episode's full description
  final String description;

  /// The email of this podcast's producer. This field is available only in the PRO plan.
  final String email;

  /// The country where this podcast is produced.
  final String country;

  /// iTunes id for this podcast.
  final int itunesId;

  final PodcastLookingFor lookingFor;
  final PodcastExtra podcastExtra;
  final List<int> genreIds;

  PodcastSimple({
    String id,
    this.isClaimed,
    this.type,
    this.explicitContent,
    this.website,
    this.totalEpisodes,
    this.earliestPubDateMs,
    this.rss,
    this.latestPubDateMs,
    String title,
    this.language,
    this.description,
    this.email,
    String image,
    String thumbnail,
    String listennotesUrl,
    this.country,
    String publisher,
    this.itunesId,
    this.lookingFor,
    this.podcastExtra,
    this.genreIds,
    String listenScore,
    String listenScoreGlobalRank,
  }) : super(
            title: title,
            id: id,
            listennotesUrl: listennotesUrl,
            image: image,
            thumbnail: thumbnail,
            listenScore: listenScore,
            listenScoreGlobalRank: listenScoreGlobalRank,
            publisher: publisher);

  static typeFromJson(String value) {
    Type type = PodcastType;

    var enumValue = type.toString() + "." + value.toUpperCase();

    return PodcastType.values.firstWhere((element) => element.toString() == enumValue) ?? PodcastType.EPISODIC;
  }

  factory PodcastSimple.fromJson(Map<String, dynamic> json) => _$PodcastSimpleFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastSimpleToJson(this);
}
