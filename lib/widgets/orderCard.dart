import 'package:flutter/material.dart';
import 'package:waiter_app/model/order.model.dart';

class OrderCard extends StatefulWidget {
  final Order order;

  OrderCard({@required this.order});

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  List<Widget> getItems() {
    List<Widget> texts = [];

    for (var item in widget.order.items) {
      texts.add(Container(
        child: Text("${item.foodName}: ${item.quantity}"),
        color: Theme.of(context).canvasColor,
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(8),
      ));
    }

    return texts;
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order details ${widget.order.pass}'),
          content: SingleChildScrollView(
            child: ListBody(
              children: getItems(),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              textTheme: ButtonTextTheme.accent,
              child: Text('Ok'),
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
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  widget.order.pass,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              height: 128,
              width: 128,
              color: Theme.of(context).canvasColor,
            ),
            Container(
              height: 128,
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "R\$ ${widget.order.totalPrice}",
                    style: TextStyle(fontSize: 16),
                  ),
                  RaisedButton(
                    onPressed: () => _showMyDialog(),
                    child: Text("See more"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
