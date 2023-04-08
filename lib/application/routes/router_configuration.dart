import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/domain.dart';
import '../../presentation/presentation.dart';
import 'route_location.dart';

class RouterConfiguration {
  static final GoRouter router = GoRouter(
    initialLocation: '/${RoutePath.home}',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: RouteName.home,
        path: '/${RoutePath.home}',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: [
          GoRoute(
            name: RouteName.productList,
            path: RoutePath.productList,
            builder: (context, state) {
              final List<ProductModel> products =
                  state.extra as List<ProductModel>;
              return ProductListScreen(products: products);
            },
            routes: [
              GoRoute(
                name: RouteName.productDetail,
                path: RoutePath.productDetail,
                builder: (context, state) {
                  final ProductModel product = state.extra as ProductModel;
                  return ProductDetailScreen(product: product);
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: RouteName.setting,
        path: '/${RoutePath.setting}',
        builder: (context, state) {
          final String theme = state.queryParams['theme'] ?? 'Empty';
          return SettingScreen(theme: theme);
        },
      ),
    ],
  );
}
