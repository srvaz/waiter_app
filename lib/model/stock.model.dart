class Stock {
  final int id;
  final String foodName;
  final String price;
  final int quantity;

  Stock({ this.id, this.foodName, this.price, this.quantity});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      id: json['id'],
      foodName: json['foodName'],
      price: json['price'],
      quantity: json['quantity']
    );
  }
}