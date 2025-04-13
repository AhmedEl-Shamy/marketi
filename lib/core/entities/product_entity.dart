import 'package:marketi/core/models/product_model/review.dart';
import 'package:marketi/features/product_details/domain/entities/product_option_entity.dart';

class ProductEntity {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final String thumbnail;
  final String category;
  final List images;
  final String brand;
  final List<Review> reviews;
  final double rating;
  final List<ProductOptionEntity>? options;

  ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.thumbnail,
    required this.category,
    required this.images,
    required this.brand,
    required this.reviews,
    required this.rating,
    this.options,
  });
}
