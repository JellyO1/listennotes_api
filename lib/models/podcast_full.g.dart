// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastFull _$PodcastFullFromJson(Map<String, dynamic> json) {
  return PodcastFull(
    id: json['id'] as String,
    isClaimed: json['is_claimed'] as bool,
    type: PodcastSimple.typeFromJson(json['type'] as String),
    explicitContent: json['explicit_content'] as bool,
    website: json['website'] as String,
    totalEpisodes: json['total_episodes'] as int,
    earliestPubDateMs: json['earliest_pub_date_ms'] as int,
    rss: json['rss'] as String,
    latestPubDateMs: json['latest_pub_date_ms'] as int,
    title: json['title'] as String,
    language: json['language'] as String,
    description: json['description'] as String,
    email: json['email'] as String,
    image: json['image'] as String,
    thumbnail: json['thumbnail'] as String,
    listennotesUrl: json['listennotes_url'] as String,
    country: json['country'] as String,
    publisher: json['publisher'] as String,
    itunesId: json['itunes_id'] as int,
    lookingFor: json['looking_for'] == null
        ? null
        : PodcastLookingFor.fromJson(
            json['looking_for'] as Map<String, dynamic>),
    podcastExtra: json['podcast_extra'] == null
        ? null
        : PodcastExtra.fromJson(json['podcast_extra'] as Map<String, dynamic>),
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    listenScore: json['listen_score'] as String,
    listenScoreGlobalRank: json['listen_score_global_rank'] as String,
    episodes: (json['episodes'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeMinimum.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextEpisodePubDate: json['next_episode_pub_date'] as int,
  );
}

Map<String, dynamic> _$PodcastFullToJson(PodcastFull instance) =>
    <String, dynamic>{
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'listennotes_url': instance.listennotesUrl,
      'id': instance.id,
      'publisher': instance.publisher,
      'listen_score': instance.listenScore,
      'listen_score_global_rank': instance.listenScoreGlobalRank,
      'is_claimed': instance.isClaimed,
      'type': _$PodcastTypeEnumMap[instance.type],
      'explicit_content': instance.explicitContent,
      'website': instance.website,
      'total_episodes': instance.totalEpisodes,
      'earliest_pub_date_ms': instance.earliestPubDateMs,
      'rss': instance.rss,
      'latest_pub_date_ms': instance.latestPubDateMs,
      'language': instance.language,
      'description': instance.description,
      'email': instance.email,
      'country': instance.country,
      'itunes_id': instance.itunesId,
      'looking_for': instance.lookingFor,
      'podcast_extra': instance.podcastExtra,
      'genre_ids': instance.genreIds,
      'episodes': instance.episodes,
      'next_episode_pub_date': instance.nextEpisodePubDate,
    };

const _$PodcastTypeEnumMap = {
  PodcastType.EPISODIC: 'EPISODIC',
  PodcastType.SERIAL: 'SERIAL',
};
