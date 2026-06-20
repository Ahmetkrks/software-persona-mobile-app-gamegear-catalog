class ProductModel {
  final int id;
  final String name;
  final String category;
  final String subtitle;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> specs;

  const ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.specs,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      category: json['category'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      specs: List<String>.from(json['specs'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'subtitle': subtitle,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'specs': specs,
    };
  }
}
