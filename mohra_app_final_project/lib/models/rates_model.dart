class Rates {
  int? id; 
  String? image;
  String? title;
  String? message;

  Rates({this.id, this.image, this.title, this.message});

  Rates.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image,
      'title': title,
      'message': message,
    };
  }
}