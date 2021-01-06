import 'package:json_annotation/json_annotation.dart';

part 'podcast_extra.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodcastExtra {
  /// YouTube url affiliated with this podcast
  final String youtubeUrl;

  /// Facebook username affiliated with this podcast
  final String facebookHandle;

  /// Instagram username affiliated with this podcast
  final String instagramHandle;

  /// Twitter username affiliated with this podcast
  final String twitterHandle;

  /// WeChat username affiliated with this podcast
  final String wechatHandle;

  /// Patreon username affiliated with this podcast
  final String patreonHandle;

  /// Google Podcasts url for this podcast
  final String googleUrl;

  /// LinkedIn url affiliated with this podcast
  final String linkedInUrl;

  /// Spotify url for this podcast
  final String spotifyUrl;

  /// Url affiliated with this podcast
  final String url1;

  /// Url affiliated with this podcast
  final String url2;

  /// Url affiliated with this podcast
  final String url3;

  PodcastExtra({
    this.youtubeUrl,
    this.facebookHandle,
    this.instagramHandle,
    this.twitterHandle,
    this.wechatHandle,
    this.patreonHandle,
    this.googleUrl,
    this.linkedInUrl,
    this.spotifyUrl,
    this.url1,
    this.url2,
    this.url3,
  });

  factory PodcastExtra.fromJson(Map<String, dynamic> json) => _$PodcastExtraFromJson(json);
  Map<String, dynamic> toJson() => _$PodcastExtraToJson(this);
}
