import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String imageurl;
  CategoryItem({this.name, this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        splashColor: Colors.blue,
        onTap: () {},
        focusColor: Colors.blue,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0)),
          ),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                child: Image(height: 200,width: double.infinity,
                  image: AssetImage(imageurl),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: "",
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
