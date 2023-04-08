import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/domain.dart';
import '../../../application/application.dart';

class ProductListScreen extends StatelessWidget {
  final List<ProductModel> products;

  const ProductListScreen({
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductListScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final ProductModel product = products[index];
            return ElevatedButton(
              onPressed: () {
                context.pushNamed(RoutePath.productDetail, extra: product);
              },
              child: Text(
                product.toString(),
              ),
            );
          },
        ),
      ),
    );
  }
}
