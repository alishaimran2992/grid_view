
import 'package:flutter/material.dart';
import 'package:grid_view/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('players Details'),
      ),
      body: Column(
        children: [
          Image.network(
            product.imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.fill,
          ),

          Text(product.name, style: const TextStyle(fontSize: 30),)

        ],
      ),
    );
  }
}
