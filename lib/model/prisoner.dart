class Prisoner {
  int? id;
  String? name;
  int? number;
  String? place;
  String? image;
  String? status;
  int? neededAmount;

  Prisoner(
      {this.id,
      this.name,
      this.number,
      this.place,
      this.image,
      this.status,
      this.neededAmount});

  factory Prisoner.fromJson(Map<String, dynamic> json) {
    return Prisoner(
        id: json['id'],
        name: json['name'],
        number: json['number'],
        place: json['place'],
        image: json['image'],
        status: json['status'],
        neededAmount: json['neededAmount']);
  }
}
