import 'package:flutter/material.dart';

import '../../../domain/domain.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailScreen({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductDetailScreen'),
      ),
      body: Center(
        child: Text(product.toString()),
      ),
    );
  }
}
