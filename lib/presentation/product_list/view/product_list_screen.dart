import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_router_sample/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';

class ProductListScreen extends StatefulWidget {
  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductListBloc>().add(FetchProductList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductListScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            if (state.loadingStatusType == LoadingStatusType.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final ProductModel product = state.products[index];
                return ElevatedButton(
                  onPressed: () {
                    context.pushNamed(RoutePath.productDetail, extra: product);
                  },
                  child: Text(
                    product.toString(),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ProductModel newProductModel = const ProductModel(
            email: 'newEmail@gmail.com',
            name: 'newName',
          );

          context
              .read<ProductListBloc>()
              .add(AddProductEvent(newProduct: newProductModel));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
