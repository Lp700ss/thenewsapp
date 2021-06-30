import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("The"),
              Text('News', style: TextStyle(
                  color: Colors.blue
              ),),
              Text("App", style: TextStyle(
                  color: Colors.black
              ),)
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: ,
        )
    );
  }
}

class CategoryTitle  extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTitle({this.imageUrl,this.categoryName})
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(imageUrl, width: 120, height: 60,),
        ],
      ),
    );
  }
}

