class Product {
  final String imageUrl;
  final String name;
  final double price;
  final String description;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      imageUrl: json['image'],
      name: json['title'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
    );
  }
}
