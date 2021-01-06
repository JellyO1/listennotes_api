// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_minimum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastMinimum _$PodcastMinimumFromJson(Map<String, dynamic> json) {
  return PodcastMinimum(
    image: json['image'] as String,
    thumbnail: json['thumbnail'] as String,
    title: json['title'] as String,
    listennotesUrl: json['listennotes_url'] as String,
    id: json['id'] as String,
    publisher: json['publisher'] as String,
    listenScore: json['listen_score'] as String,
    listenScoreGlobalRank: json['listen_score_global_rank'] as String,
  );
}

Map<String, dynamic> _$PodcastMinimumToJson(PodcastMinimum instance) =>
    <String, dynamic>{
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'listennotes_url': instance.listennotesUrl,
      'id': instance.id,
      'publisher': instance.publisher,
      'listen_score': instance.listenScore,
      'listen_score_global_rank': instance.listenScoreGlobalRank,
    };
