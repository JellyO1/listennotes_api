import 'package:json_annotation/json_annotation.dart';
import 'package:listennotes_api/models/episode_minimum.dart';
import 'package:listennotes_api/models/podcast_extra.dart';
import 'package:listennotes_api/models/podcast_looking_for.dart';
import 'package:listennotes_api/models/podcast_simple.dart';

part 'podcast_full.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastFull extends PodcastSimple {
  final List<EpisodeMinimum> episodes;
  int nextEpisodePubDate;

  PodcastFull({
    String id,
    bool isClaimed,
    PodcastType type,
    bool explicitContent,
    String website,
    int totalEpisodes,
    int earliestPubDateMs,
    String rss,
    int latestPubDateMs,
    String title,
    String language,
    String description,
    String email,
    String image,
    String thumbnail,
    String listennotesUrl,
    String country,
    String publisher,
    int itunesId,
    PodcastLookingFor lookingFor,
    PodcastExtra podcastExtra,
    List<int> genreIds,
    String listenScore,
    String listenScoreGlobalRank,
    this.episodes,
    this.nextEpisodePubDate,
  }) : super(
          id: id,
          isClaimed: isClaimed,
          type: type,
          explicitContent: explicitContent,
          website: website,
          totalEpisodes: totalEpisodes,
          earliestPubDateMs: earliestPubDateMs,
          rss: rss,
          latestPubDateMs: latestPubDateMs,
          title: title,
          language: language,
          description: description,
          email: email,
          image: image,
          thumbnail: thumbnail,
          listennotesUrl: listennotesUrl,
          country: country,
          publisher: publisher,
          itunesId: itunesId,
          lookingFor: lookingFor,
          podcastExtra: podcastExtra,
          genreIds: genreIds,
          listenScore: listenScore,
          listenScoreGlobalRank: listenScoreGlobalRank,
        );

  factory PodcastFull.fromJson(Map<String, dynamic> json) => _$PodcastFullFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastFullToJson(this);

  /// This adds the other podcast episodes and substitutes the nextEpisodePubDate
  PodcastFull operator +(PodcastFull other) {
    this.episodes.addAll(other.episodes);
    this.nextEpisodePubDate = other.nextEpisodePubDate;

    return this;
  }
}
