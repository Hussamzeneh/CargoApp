class ProductModel{
  late int id;
  late String name;
  late int price;
  late String? image;

  ProductModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image']?['url'];

    image = 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';
  }

  @override
  String toString() {
    return '{id: $id, name: $name, price: $price}\n';
  }
}