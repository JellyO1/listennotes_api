// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_minimum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeMinimum _$EpisodeMinimumFromJson(Map<String, dynamic> json) {
  return EpisodeMinimum(
    id: json['id'] as String,
    link: json['link'] as String,
    audio: json['audio'] as String,
    image: json['image'] as String,
    title: json['title'] as String,
    thumbnail: json['thumbnail'] as String,
    description: json['description'] as String,
    pubDateMs: json['pub_date_ms'] as int,
    listennotesUrl: json['listennotes_url'] as String,
    audioLengthSec: json['audio_length_sec'] as int,
    explicitContent: json['explicit_content'] as bool,
    maybeAudioInvalid: json['maybe_audio_invalid'] as bool,
    listennotesEditUrl: json['listennotes_edit_url'] as String,
  );
}

Map<String, dynamic> _$EpisodeMinimumToJson(EpisodeMinimum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'audio': instance.audio,
      'image': instance.image,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'pub_date_ms': instance.pubDateMs,
      'listennotes_url': instance.listennotesUrl,
      'audio_length_sec': instance.audioLengthSec,
      'explicit_content': instance.explicitContent,
      'maybe_audio_invalid': instance.maybeAudioInvalid,
      'listennotes_edit_url': instance.listennotesEditUrl,
    };
