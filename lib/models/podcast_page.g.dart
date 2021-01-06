// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastPage _$PodcastPageFromJson(Map<String, dynamic> json) {
  return PodcastPage(
    hasPrevious: json['has_previous'] as bool,
    name: json['name'] as String,
    listennotesUrl: json['listennotes_url'] as String,
    previousPageNumber: json['previous_page_number'] as int,
    pageNumber: json['page_number'] as int,
    hasNext: json['has_next'] as bool,
    nextPageNumber: json['next_page_number'] as int,
    parentId: json['parent_id'] as int,
    id: json['id'] as int,
    total: json['total'] as int,
    podcasts: (json['podcasts'] as List)
        ?.map((e) => e == null
            ? null
            : PodcastSimple.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PodcastPageToJson(PodcastPage instance) =>
    <String, dynamic>{
      'has_previous': instance.hasPrevious,
      'name': instance.name,
      'listennotes_url': instance.listennotesUrl,
      'previous_page_number': instance.previousPageNumber,
      'page_number': instance.pageNumber,
      'has_next': instance.hasNext,
      'next_page_number': instance.nextPageNumber,
      'parent_id': instance.parentId,
      'id': instance.id,
      'total': instance.total,
      'podcasts': instance.podcasts,
    };
