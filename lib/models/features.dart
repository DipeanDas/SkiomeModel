import 'dart:convert';

class Featuremodel {
  // ignore: non_constant_identifier_names
  static List<features> Topfeatures = [];
}

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

  features copyWith({
    String? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return features(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory features.fromMap(Map<String, dynamic> map) {
    return features(
      id: map['id'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory features.fromJson(String source) =>
      features.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'features(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant features other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
