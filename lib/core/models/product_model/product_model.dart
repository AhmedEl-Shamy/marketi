import 'package:marketi/core/entities/product_entity.dart';

import 'dimensions.dart';
import 'meta.dart';
import 'review.dart';

class ProductModel extends ProductEntity {
  // int? id;
  // String? title;
  // String? description;
  // String? category;
  // double? price;
  // double? discountPercentage;
  // double? rating;
  int? stock;
  List<String>? tags;
  // String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  // List<Review>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  // List<String>? images;
  // String? thumbnail;

  ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.category,
    required super.price,
    required super.discountPercentage,
    required super.rating,
    required super.brand,
    required super.reviews,
    required super.images,
    required super.thumbnail,
    this.stock,
    this.tags,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int? ?? 0,
        title: json['title'] as String? ?? '',
        description: json['description'] as String? ?? '',
        category: json['category'] as String? ?? '',
        price: (json['price'] as num?)?.toDouble() ?? 0.0,
        discountPercentage:
            (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
        rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
        stock: json['stock'] as int?,
        tags: json['tags'] as List<String>?,
        brand: json['brand'] as String? ?? '',
        sku: json['sku'] as String?,
        weight: json['weight'] as int?,
        dimensions: json['dimensions'] == null
            ? null
            : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
        warrantyInformation: json['warrantyInformation'] as String?,
        shippingInformation: json['shippingInformation'] as String?,
        availabilityStatus: json['availabilityStatus'] as String?,
        reviews: (json['reviews'] as List<dynamic>?)
                ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
                .toList() ?? [],
        returnPolicy: json['returnPolicy'] as String?,
        minimumOrderQuantity: json['minimumOrderQuantity'] as int?,
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(json['meta'] as Map<String, dynamic>),
        images: json['images'] as List<String>? ?? [],
        thumbnail: json['thumbnail'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'category': category,
        'price': price,
        'discountPercentage': discountPercentage,
        'rating': rating,
        'stock': stock,
        'tags': tags,
        'brand': brand,
        'sku': sku,
        'weight': weight,
        'dimensions': dimensions?.toJson(),
        'warrantyInformation': warrantyInformation,
        'shippingInformation': shippingInformation,
        'availabilityStatus': availabilityStatus,
        'reviews': reviews.map((e) => e.toJson()).toList(),
        'returnPolicy': returnPolicy,
        'minimumOrderQuantity': minimumOrderQuantity,
        'meta': meta?.toJson(),
        'images': images,
        'thumbnail': thumbnail,
      };
}
