class Surahs {
  String? surahName;
  String? revelationType;
  String? ayahs;

  Surahs({this.surahName,this.revelationType,this.ayahs});

  factory Surahs.fromJson(Map<String,dynamic> json){
    return Surahs(

      surahName: json["name"] ?? "",
      revelationType : json["revelationType"] ?? "",
      ayahs : json["ayahs"] ?? "",

    );
  }
}