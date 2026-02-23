class ClubsModel {
  String? clubName;
  String? logoUrl;
  int? leagueRank;
  int? points;
  int? totalTrophies;
  String? manager;
  List<String>? keyPlayers;

  ClubsModel({
    this.clubName,
    this.logoUrl,
    this.leagueRank,
    this.points,
    this.totalTrophies,
    this.manager,
    this.keyPlayers,
  });

  factory ClubsModel.fromJson(Map<String, dynamic> json) {
    return ClubsModel(
      clubName: json["name"],
      logoUrl: json["logo_url"],
      leagueRank: json["league_rank"],
      points: json["points"],
      totalTrophies: json["total_trophies"],
      manager: json["manager"],
      keyPlayers: List<String>.from(json["key_players"] ?? []),
    );
  }
}
