import 'product_option_entity.dart';

class ProductEntity {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final List<String> images;
  final List<ProductOptionEntity>? options;
  ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.rating,
    this.options,
  });
}

