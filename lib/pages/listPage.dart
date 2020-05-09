import 'package:flutter/material.dart';
import 'package:waiter_app/model/order.model.dart';
import 'package:waiter_app/model/orderItem.model.dart';
import 'package:waiter_app/widgets/orderCard.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Order> orderList = [];
  List<OrderItem> orderItems = [
    OrderItem(id: 1, foodName: "Pastel de pizza", quantity: 2),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
    OrderItem(id: 1, foodName: "Coxinha", quantity: 1),
  ];

  _ListPageState() {
    orderList.add(Order(
      id: 1,
      finished: false,
      pass: "01",
      totalPrice: "8,00",
      items: orderItems,
    ));
    orderList.add(Order(
      id: 2,
      finished: false,
      pass: "02",
      totalPrice: "4,50",
      items: [],
    ));
  }

  Future<void> _showModalForm() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add order'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              textTheme: ButtonTextTheme.accent,
              child: Text('Add'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Waiter App"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: orderList.length,
        itemBuilder: (BuildContext _ctx, int index) {
          return OrderCard(order: orderList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showModalForm(),
      ),
    );
  }
}
