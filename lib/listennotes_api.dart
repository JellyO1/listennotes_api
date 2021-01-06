library listennotes_api;

import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:listennotes_api/models/podcast_full.dart';
import 'package:path/path.dart';
import 'utils/extensions.dart';

import 'models/genre.dart';
import 'models/podcast_page.dart';

class ApiKeyHeaderInterceptor extends Interceptor {
  final String key;

  ApiKeyHeaderInterceptor(this.key);

  @override
  Future onRequest(RequestOptions options) async {
    options.headers.putIfAbsent('X-ListenAPI-Key', () => key);
    return options;
  }
}

enum Sort {
  RECENT_FIRST,
  OLDEST_FIRST
}

class ListenNotesAPI {
  static const String listenApiBaseUrl = "https://listen-api.listennotes.com/api";
  static const String listenApiVersion = "v2";
  final String listenApiUrl = url.join(listenApiBaseUrl, listenApiVersion);
  Dio dio;

  ListenNotesAPI({@required String apiKey, Dio dio}) {
    this.dio = dio ?? Dio();
    this.dio.interceptors.add(ApiKeyHeaderInterceptor(apiKey));
  }

  /// Gets all of podcast genres.
  Future<List<Genre>> getGenres() async {
    var response = await dio.get<List<Genre>>(listenApiUrl.endpoint('genres'));
    return response.data;
  }

  Future<PodcastFull> getPodcastDetail({ @required String podcastId, int episodePage, Sort sort = Sort.RECENT_FIRST }) async {
    Map<String, dynamic> queryParameters = {
      "sort" : sort.toString().toLowerCase()
    };

    if(episodePage != null)
      queryParameters.putIfAbsent('next_episode_pub_date', () => episodePage);

    var response = await dio.get<PodcastFull>(listenApiUrl.endpoint('podcasts/$podcastId'), queryParameters: queryParameters);

    return response.data;
  }

  Future<PodcastPage> getBestPodcasts({ @required int page, int genre, String region, bool safeForWork = true }) async {
    Map<String, dynamic> queryParameters = {
      "page": page
    };

    if(genre != null)
      queryParameters.putIfAbsent("genre_id", () => genre);

    var response = await dio.get<PodcastPage>(listenApiUrl.endpoint('best_podcasts'), queryParameters: queryParameters);

    return response.data;
  }
}

