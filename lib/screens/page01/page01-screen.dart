import 'package:flutter/material.dart';

import '../page02/page02-screen.dart';
import 'widgets/carrinho-widget.dart';
import 'widgets/despesas-fixas-widget.dart';

class Page01Screen extends StatefulWidget {
  @override
  Page01ScreenState createState() {
    return new Page01ScreenState();
  }
}

class Page01ScreenState extends State<Page01Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Cart",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Close",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(child: _buildConteudo()),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 20,
                ),
                child: Container(
                  width: 160,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page02Screen())
                      );
                    },
                    child: Text("Check Out", style: TextStyle(fontSize: 20)),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConteudo() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(child: CarrinhoWidget()),
          DespesasFixasWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: <Widget>[
                Spacer(),
                Container(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 2,
                )
              ],
            ),
          ),
          ListTile(
            title: Align(
              alignment: Alignment.centerRight,
              child: Text("Total", style: TextStyle(fontSize: 20)),
            ),
            trailing: Text("\$175", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
