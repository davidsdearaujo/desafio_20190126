import 'package:flutter/material.dart';

class DespesasFixasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("Shipping to:"),
              Text("Av. Soldad Las Torres"),
              Text("114, Teucha, México"),
            ],
          ),
          trailing: Text("\$40", style: TextStyle(fontSize: 20)),
        ),
        ListTile(
          title: Align(
            alignment: Alignment.centerRight,
            child: Text("Service Fee"),
          ),
          trailing: Text("\$15", style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
