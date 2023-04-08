import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../application/application.dart';
import '../../../domain/domain.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc() : super(ProductListState.initial()) {
    on<AddProductEvent>((event, emit) async {
      emit(state.copyWith(loadingStatusType: LoadingStatusType.loading));
      await Future.delayed(const Duration(seconds: 5), () {});

      final ProductModel newProduct = event.newProduct;
      emit(state.copyWith(
        products: [...state.products, newProduct],
        loadingStatusType: LoadingStatusType.completed,
      ));
    });

    on<FetchProductList>((event, emit) async {
      emit(state.copyWith(loadingStatusType: LoadingStatusType.loading));
      await Future.delayed(const Duration(seconds: 5), () {});

      final List<ProductModel> products = [
        ProductModel(email: 'fistkim1@gmail.com', name: 'name1'),
        ProductModel(email: 'fistkim2@gmail.com', name: 'name2'),
        ProductModel(email: 'fistkim3@gmail.com', name: 'name3'),
      ];

      emit(state.copyWith(
        products: products,
        loadingStatusType: LoadingStatusType.completed,
      ));
    });
  }
}
