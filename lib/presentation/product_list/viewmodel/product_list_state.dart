part of 'product_list_bloc.dart';

class ProductListState extends Equatable {
  final List<ProductModel> products;
  final LoadingStatusType loadingStatusType;

  const ProductListState({
    required this.products,
    required this.loadingStatusType,
  });

  factory ProductListState.initial() {
    return const ProductListState(
      products: [],
      loadingStatusType: LoadingStatusType.initial,
    );
  }

  @override
  List<Object> get props => [products, loadingStatusType];

  ProductListState copyWith({
    List<ProductModel>? products,
    LoadingStatusType? loadingStatusType,
  }) {
    return ProductListState(
      products: products ?? this.products,
      loadingStatusType: loadingStatusType ?? this.loadingStatusType,
    );
  }
}
