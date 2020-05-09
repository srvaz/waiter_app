class OrderItem {
  final int id;
  final String foodName;
  final int quantity;

  OrderItem({
    this.id,
    this.quantity,
    this.foodName,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      quantity: json['quantity'],
      foodName: json['foodName'],
    );
  }
}
