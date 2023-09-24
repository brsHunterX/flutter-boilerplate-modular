import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String title;
  final String description;
  final double price;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [id, title, description, price];

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      price: map['price'].toDouble(),
    );
  }

  static List<Product> fromList(List<dynamic> list) {
    return list.map((item) => Product.fromMap(item)).toList();
  }
}