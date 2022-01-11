class Model {
  String? id;
  String? name;
  String? number;
  String? place;
  String? thumbnail;
  String? image;
  String? status;
  String? neededAmount;
  //
  String? details;

  Model(
      {this.id,
      this.name,
      this.number,
      this.place,
      this.thumbnail,
      this.image,
      this.status,
      this.neededAmount,
      this.details});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        id: json['id'],
        name: json['name'],
        number: json['number'],
        place: json['place'],
        thumbnail: json['thumbnail'],
        image: json['image'],
        status: json['status'],
        neededAmount: json['neededAmount'].toString(),
        details: json['details']
    );
  }
}
