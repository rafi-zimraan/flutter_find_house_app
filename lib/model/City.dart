class City {
  int? id;
  String name;
  String imageUrl;
  bool isPopular = false;

  City({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.isPopular,
  });
}
