import 'package:flutter/material.dart';

class CarrinhoWidget extends StatefulWidget {
  @override
  CarrinhoWidgetState createState() {
    return new CarrinhoWidgetState();
  }
}

class CarrinhoWidgetState extends State<CarrinhoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        _buildItem(name: "Hamburguesa de Pollo", count: 1, value: 59),
        _buildItem(name: "Tacos al Pastor", count: 3, value: 42),
        _buildItem(name: "Bebida Grande", count: 1, value: 25),
        _buildItem(name: "Hamburguesa de Pollo", count: 1, value: 59),
        _buildItem(name: "Tacos al Pastor", count: 3, value: 42),
        _buildItem(name: "Bebida Grande", count: 1, value: 25),
        _buildItem(name: "Hamburguesa de Pollo", count: 1, value: 59),
        _buildItem(name: "Tacos al Pastor", count: 3, value: 42),
        _buildItem(name: "Bebida Grande", count: 1, value: 25),
        _buildItem(name: "Hamburguesa de Pollo", count: 1, value: 59),
        _buildItem(name: "Tacos al Pastor", count: 3, value: 42),
        _buildItem(name: "Bebida Grande", count: 1, value: 25),
      ],
    );
  }

  Widget _buildItem({String name, int count, double value}) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove_circle_outline, size: 15,),
          onPressed: () {},
        ),
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Text(
            count.toString(),
            style: TextStyle(fontSize: 12),
          ),
          radius: 10,
        ),
        SizedBox(width: 10),
        Expanded(child: Text(name, style: TextStyle(fontSize: 18))),
        Text("\$${value.ceil()}", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
