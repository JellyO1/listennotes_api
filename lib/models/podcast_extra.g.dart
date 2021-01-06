// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastExtra _$PodcastExtraFromJson(Map<String, dynamic> json) {
  return PodcastExtra(
    youtubeUrl: json['youtube_url'] as String,
    facebookHandle: json['facebook_handle'] as String,
    instagramHandle: json['instagram_handle'] as String,
    twitterHandle: json['twitter_handle'] as String,
    wechatHandle: json['wechat_handle'] as String,
    patreonHandle: json['patreon_handle'] as String,
    googleUrl: json['google_url'] as String,
    linkedInUrl: json['linked_in_url'] as String,
    spotifyUrl: json['spotify_url'] as String,
    url1: json['url1'] as String,
    url2: json['url2'] as String,
    url3: json['url3'] as String,
  );
}

Map<String, dynamic> _$PodcastExtraToJson(PodcastExtra instance) =>
    <String, dynamic>{
      'youtube_url': instance.youtubeUrl,
      'facebook_handle': instance.facebookHandle,
      'instagram_handle': instance.instagramHandle,
      'twitter_handle': instance.twitterHandle,
      'wechat_handle': instance.wechatHandle,
      'patreon_handle': instance.patreonHandle,
      'google_url': instance.googleUrl,
      'linked_in_url': instance.linkedInUrl,
      'spotify_url': instance.spotifyUrl,
      'url1': instance.url1,
      'url2': instance.url2,
      'url3': instance.url3,
    };
