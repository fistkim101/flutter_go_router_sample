part of 'product_list_bloc.dart';

abstract class ProductListEvent extends Equatable {
  const ProductListEvent();

  @override
  List<Object?> get props => [];
}

class AddProductEvent extends ProductListEvent {
  final ProductModel newProduct;

  const AddProductEvent({
    required this.newProduct,
  });

  @override
  List<Object?> get props => [newProduct];
}

class FetchProductList extends ProductListEvent {}
