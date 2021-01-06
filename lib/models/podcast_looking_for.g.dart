// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_looking_for.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastLookingFor _$PodcastLookingForFromJson(Map<String, dynamic> json) {
  return PodcastLookingFor(
    cohosts: json['cohosts'] as bool,
    crossPromotion: json['cross_promotion'] as bool,
    sponsors: json['sponsors'] as bool,
    guests: json['guests'] as bool,
  );
}

Map<String, dynamic> _$PodcastLookingForToJson(PodcastLookingFor instance) =>
    <String, dynamic>{
      'cohosts': instance.cohosts,
      'cross_promotion': instance.crossPromotion,
      'sponsors': instance.sponsors,
      'guests': instance.guests,
    };
