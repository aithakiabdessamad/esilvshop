class Product {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final int price;
  final num rating;

  //Constructeur avec les paramètres nommés "required"
  Product({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.category,
    required this.description,
    required this.rating,
  });

  String getPrice() => "${(price / 100).toStringAsFixed(2)}€";

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'image': image,
      'price': price / 100,
      'rating': {'rate': rating},
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    num ratingVal = 0.0;
    if (map['rating'] is Map) {
      ratingVal = (map['rating']['rate'] as num?) ?? 0.0;
    } else if (map['rating'] is num) {
      ratingVal = map['rating'] as num;
    } else if (map['rate'] is num) {
      ratingVal = map['rate'] as num;
    }

    final rawPrice = map['price'] as num? ?? 0;

    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
      price: (rawPrice * 100).round(),
      rating: ratingVal,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) => Product.fromMap(json);
  Map<String, dynamic> toJson() => toMap();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          category == other.category &&
          image == other.image &&
          price == other.price &&
          rating == other.rating;

  @override
  int get hashCode =>
      Object.hash(id, title, description, category, image, price, rating);
}

