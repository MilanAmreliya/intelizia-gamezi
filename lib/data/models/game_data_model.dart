import 'dart:convert';

Game gameFromJson(String str) => Game.fromJson(json.decode(str));

String gameToJson(Game data) => json.encode(data.toJson());

class Game {
  String title;
  String slug;
  String gameUrl;
  String fullGameUrl;
  String halfGameUrl;
  String imageUrl;
  String description;
  String longDescription;
  String about;
  AboutThisGame aboutThisGame;
  List<String> features;
  HowToPlayQuick howToPlayQuick;
  List<String> proTips;
  List<String> whyPeopleLoveIt;
  List<String> howToPlay;
  List<String> tags;
  List<String> platform;

  Game({
    required this.title,
    required this.fullGameUrl,
    required this.slug,
    required this.halfGameUrl,
    required this.gameUrl,
    required this.imageUrl,
    required this.description,
    required this.longDescription,
    required this.about,
    required this.aboutThisGame,
    required this.features,
    required this.howToPlayQuick,
    required this.proTips,
    required this.whyPeopleLoveIt,
    required this.howToPlay,
    required this.tags,
    required this.platform,
  });

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        title: json["title"],
        slug: json["slug"],
        gameUrl: json["gameUrl"],
        fullGameUrl: json['fullGameUrl'],
        halfGameUrl: json['halfGameUrl'],
        imageUrl: json["imageUrl"],
        description: json["description"],
        longDescription: json["longDescription"],
        about: json["about"],
        aboutThisGame: AboutThisGame.fromJson(json["aboutThisGame"]),
        features: List<String>.from(json["features"].map((x) => x)),
        howToPlayQuick: HowToPlayQuick.fromJson(json["howToPlayQuick"]),
        proTips: List<String>.from(json["proTips"].map((x) => x)),
        whyPeopleLoveIt: List<String>.from(json["whyPeopleLoveIt"].map((x) => x)),
        howToPlay: List<String>.from(json["howToPlay"].map((x) => x)),
        tags: List<String>.from(json["tags"].map((x) => x)),
        platform: List<String>.from(json["platform"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "gameUrl": gameUrl,
        "slug": slug,
        'fullGameUrl': fullGameUrl,
        'halfGameUrl': halfGameUrl,
        "imageUrl": imageUrl,
        "description": description,
        "longDescription": longDescription,
        "about": about,
        "aboutThisGame": aboutThisGame.toJson(),
        "features": List<dynamic>.from(features.map((x) => x)),
        "howToPlayQuick": howToPlayQuick.toJson(),
        "proTips": List<dynamic>.from(proTips.map((x) => x)),
        "whyPeopleLoveIt": List<dynamic>.from(whyPeopleLoveIt.map((x) => x)),
        "howToPlay": List<dynamic>.from(howToPlay.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "platform": List<dynamic>.from(platform.map((x) => x)),
      };
}

class AboutThisGame {
  String genre;
  String sessionLength;
  List<String> coreSkills;
  List<String> bestFor;
  String monetization;

  AboutThisGame({
    required this.genre,
    required this.sessionLength,
    required this.coreSkills,
    required this.bestFor,
    required this.monetization,
  });

  factory AboutThisGame.fromJson(Map<String, dynamic> json) => AboutThisGame(
        genre: json["genre"],
        sessionLength: json["sessionLength"],
        coreSkills: List<String>.from(json["coreSkills"].map((x) => x)),
        bestFor: List<String>.from(json["bestFor"].map((x) => x)),
        monetization: json["monetization"],
      );

  Map<String, dynamic> toJson() => {
        "genre": genre,
        "sessionLength": sessionLength,
        "coreSkills": List<dynamic>.from(coreSkills.map((x) => x)),
        "bestFor": List<dynamic>.from(bestFor.map((x) => x)),
        "monetization": monetization,
      };
}

class HowToPlayQuick {
  String desktop;
  String mobile;
  String goal;

  HowToPlayQuick({
    required this.desktop,
    required this.mobile,
    required this.goal,
  });

  factory HowToPlayQuick.fromJson(Map<String, dynamic> json) => HowToPlayQuick(
        desktop: json["desktop"],
        mobile: json["mobile"],
        goal: json["goal"],
      );

  Map<String, dynamic> toJson() => {
        "desktop": desktop,
        "mobile": mobile,
        "goal": goal,
      };
}
