import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../application/application.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  context.pushNamed(RouteName.productList);
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
