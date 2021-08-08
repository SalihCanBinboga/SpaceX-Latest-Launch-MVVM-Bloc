import 'dart:convert';

class LaunchModel {
  LaunchModel({
    required this.fairings,
    required this.links,
    required this.staticFireDateUtc,
    required this.staticFireDateUnix,
    required this.tbd,
    required this.net,
    required this.window,
    required this.rocket,
    required this.success,
    required this.details,
    required this.ships,
    required this.capsules,
    required this.payloads,
    required this.launchpad,
    required this.autoUpdate,
    required this.launchLibraryId,
    required this.failures,
    required this.crew,
    required this.flightNumber,
    required this.name,
    required this.dateUtc,
    required this.dateUnix,
    required this.dateLocal,
    required this.datePrecision,
    required this.upcoming,
    required this.cores,
    required this.id,
  });

  final Fairings? fairings;
  final Links? links;
  final DateTime? staticFireDateUtc;
  final int? staticFireDateUnix;
  final bool? tbd;
  final bool? net;
  final int? window;
  final String? rocket;
  final bool? success;
  final String? details;
  final List<String>? ships;
  final List<String>? capsules;
  final List<String>? payloads;
  final String? launchpad;
  final bool? autoUpdate;
  final String? launchLibraryId;
  final List<Failure>? failures;
  final List<String>? crew;
  final int? flightNumber;
  final String? name;
  final DateTime? dateUtc;
  final int? dateUnix;
  final DateTime? dateLocal;
  final String? datePrecision;
  final bool? upcoming;
  final List<Core>? cores;
  final String? id;

  factory LaunchModel.fromRawJson(String str) => LaunchModel.fromJson(json.decode(str));

  factory LaunchModel.fromJson(Map<String, dynamic> json) => LaunchModel(
    fairings: json["fairings"] == null ? null : Fairings.fromJson(json["fairings"]),
    links: json["links"] == null ? null : Links.fromJson(json["links"]),
    staticFireDateUtc: json["static_fire_date_utc"] == null ? null : DateTime.parse(json["static_fire_date_utc"]),
    staticFireDateUnix: json["static_fire_date_unix"],
    tbd: json["tbd"],
    net: json["net"],
    window: json["window"],
    rocket: json["rocket"],
    success: json["success"],
    details: json["details"],
    ships: json["ships"] == null ? null : List<String>.from(json["ships"].map((x) => x)),
    capsules: json["capsules"] == null ? null : List<String>.from(json["capsules"].map((x) => x)),
    payloads: json["payloads"] == null ? null : List<String>.from(json["payloads"].map((x) => x)),
    launchpad: json["launchpad"],
    autoUpdate: json["auto_update"],
    launchLibraryId: json["launch_library_id"],
    failures: json["failures"] == null ? null : List<Failure>.from(json["failures"].map((x) => Failure.fromJson(x))),
    crew: json["crew"] == null ? null : List<String>.from(json["crew"].map((x) => x)),
    flightNumber: json["flight_number"],
    name: json["name"],
    dateUtc: json["date_utc"] == null ? null : DateTime.parse(json["date_utc"]),
    dateUnix: json["date_unix"],
    dateLocal: json["date_local"] == null ? null : DateTime.parse(json["date_local"]),
    datePrecision: json["date_precision"],
    upcoming: json["upcoming"],
    cores: json["cores"] == null ? null : List<Core>.from(json["cores"].map((x) => Core.fromJson(x))),
    id: json["id"],
  );
}

class Core {
  Core({
    required this.core,
    required this.flight,
    required this.gridfins,
    required this.legs,
    required this.reused,
    required this.landingAttempt,
    required this.landingSuccess,
    required this.landingType,
    required this.landpad,
  });

  final String? core;
  final int? flight;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  final bool? landingAttempt;
  final bool? landingSuccess;
  final String? landingType;
  final String? landpad;

  factory Core.fromRawJson(String str) => Core.fromJson(json.decode(str));


  factory Core.fromJson(Map<String, dynamic> json) => Core(
    core: json["core"],
    flight: json["flight"],
    gridfins: json["gridfins"],
    legs: json["legs"],
    reused: json["reused"],
    landingAttempt: json["landing_attempt"],
    landingSuccess: json["landing_success"],
    landingType: json["landing_type"],
    landpad: json["landpad"],
  );

}
class Failure {
  Failure({
    required this.time,
    required this.altitude,
    required this.reason,
  });

  final int? time;
  final int? altitude;
  final String? reason;

  factory Failure.fromRawJson(String str) => Failure.fromJson(json.decode(str));

  factory Failure.fromJson(Map<String, dynamic> json) => Failure(
    time: json["time"],
    altitude: json["altitude"],
    reason: json["reason"],
  );
}
class Fairings {
  Fairings({
    required this.reused,
    required this.recoveryAttempt,
    required this.recovered,
    required this.ships,
  });

  final bool? reused;
  final bool? recoveryAttempt;
  final bool? recovered;
  final List<String>? ships;

  factory Fairings.fromRawJson(String str) => Fairings.fromJson(json.decode(str));


  factory Fairings.fromJson(Map<String, dynamic> json) => Fairings(
    reused: json["reused"],
    recoveryAttempt: json["recovery_attempt"],
    recovered: json["recovered"],
    ships: json["ships"] == null ? null : List<String>.from(json["ships"].map((x) => x)),
  );

}
class Links {
  Links({
    required this.patch,
    required this.reddit,
    required this.flickr,
    required this.presskit,
    required this.webcast,
    required this.youtubeId,
    required this.article,
    required this.wikipedia,
  });

  final Patch? patch;
  final Reddit? reddit;
  final Flickr? flickr;
  final String? presskit;
  final String? webcast;
  final String? youtubeId;
  final String? article;
  final String? wikipedia;

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    patch: json["patch"] == null ? null : Patch.fromJson(json["patch"]),
    reddit: json["reddit"] == null ? null : Reddit.fromJson(json["reddit"]),
    flickr: json["flickr"] == null ? null : Flickr.fromJson(json["flickr"]),
    presskit: json["presskit"],
    webcast: json["webcast"],
    youtubeId: json["youtube_id"],
    article: json["article"],
    wikipedia: json["wikipedia"],
  );
}
class Flickr {
  Flickr({
    required this.small,
    required this.original,
  });

  final List<dynamic>? small;
  final List<String>? original;

  factory Flickr.fromRawJson(String str) => Flickr.fromJson(json.decode(str));

  factory Flickr.fromJson(Map<String, dynamic> json) => Flickr(
    small: json["small"] == null ? null : List<dynamic>.from(json["small"].map((x) => x)),
    original: json["original"] == null ? null : List<String>.from(json["original"].map((x) => x)),
  );
}
class Patch {
  Patch({
    required this.small,
    required this.large,
  });

  final String? small;
  final String? large;

  factory Patch.fromRawJson(String str) => Patch.fromJson(json.decode(str));

  factory Patch.fromJson(Map<String, dynamic> json) => Patch(
    small: json["small"],
    large: json["large"],
  );
}
class Reddit {
  Reddit({
    required this.campaign,
    required this.launch,
    required this.media,
    required this.recovery,
  });

  final String? campaign;
  final String? launch;
  final String? media;
  final String? recovery;

  factory Reddit.fromRawJson(String str) => Reddit.fromJson(json.decode(str));

  factory Reddit.fromJson(Map<String, dynamic> json) => Reddit(
    campaign: json["campaign"],
    launch: json["launch"],
    media: json["media"],
    recovery: json["recovery"],
  );
}
