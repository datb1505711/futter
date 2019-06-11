class Product {
  int id;
  String name;
  
  Product(
    this.id,
    this.name,
  );

  @override
  String toString() {
    return "$id: $name";
  }
}
