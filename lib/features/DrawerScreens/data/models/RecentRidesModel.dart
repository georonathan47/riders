// To parse this JSON data, do
//
//     final recentRidesModel = recentRidesModelFromJson(jsonString);

import 'dart:convert';

class RecentRidesModel {
  RecentRidesModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<dynamic>? results;

  factory RecentRidesModel.fromRawJson(String str) =>
      RecentRidesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RecentRidesModel.fromJson(Map<String, dynamic> json) =>
      RecentRidesModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json["results"] == null
            ? []
            : List<dynamic>.from(json["results"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results":
            results == null ? [] : List<dynamic>.from(results!.map((x) => x)),
      };
}
