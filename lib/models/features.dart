// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: camel_case_types
class features {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  features({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final Topfeatures = [
  features(
    id: "Skiome001",
    name: "3DObjects",
    desc: "All types of 3D models",
    price: 20,
    color: "0fff5055f",
    image: "assets/images/3Dobjects_image.jpeg",
  ),
  features(
    id: "Skiome002",
    name: "Experiments",
    desc: "Creative Experiments",
    price: 2000,
    color: "0fff5055f",
    image: "assets/images/experiments_image.jpeg",
  )
];
