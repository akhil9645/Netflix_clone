// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowplayingModel _$NowplayingModelFromJson(Map<String, dynamic> json) =>
    NowplayingModel(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$NowplayingModelToJson(NowplayingModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
