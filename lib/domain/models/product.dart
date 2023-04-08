class ProductModel {
  final String email;
  final String name;

  const ProductModel({
    required this.email,
    required this.name,
  });

  @override
  String toString() {
    return 'ProductModel{email: $email, name: $name}';
  }
}
