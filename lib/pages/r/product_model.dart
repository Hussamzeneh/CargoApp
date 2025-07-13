class ProductModel {
  late String image;
  late int id;

  late int price;
  late String name;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
}
