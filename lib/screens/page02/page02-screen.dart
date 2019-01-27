import 'package:flutter/material.dart';

class Page02Screen extends StatefulWidget {
  @override
  Page02ScreenState createState() {
    return new Page02ScreenState();
  }
}

class Page02ScreenState extends State<Page02Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.room_service,
              size: 200,
              color: Theme.of(context).accentColor,
            ),
            Text(
              "Delicious",
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Your food is comming",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildItem(2, "Hamburguesa de Pollo"),
                  _buildItem(3, "Tacos al Pastor"),
                  _buildItem(1, "Bebida Grande"),
                ],
              ),
            ),
            Spacer(),
            Text(
              "Back to",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              "LOGO",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItem(int quant, String name) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            quant.toString(),
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 5),
          Text(
            name,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
