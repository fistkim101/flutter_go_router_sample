import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/domain.dart';
import '../../../application/application.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = [
      ProductModel(email: 'fistkim1@gmail.com', name: 'name1'),
      ProductModel(email: 'fistkim2@gmail.com', name: 'name2'),
      ProductModel(email: 'fistkim3@gmail.com', name: 'name3'),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(RouteName.productList, extra: products);
                },
                child: Text('ProductList'),
              ),
              ElevatedButton(
                onPressed: () {
                  // context.goNamed(
                  context.pushNamed(
                    RouteName.setting,
                    queryParams: {'theme': 'dark'},
                  );
                },
                child: Text('Setting'),
              ),
            ],
          ),
        ));
  }
}
