import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class Founders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Our Founders"),
      ),
      body: ListView.builder(
        itemCount: FOUNDERS.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildFounder(index);
        },
      ),
    );
  }
}

const double h = 600.0;
Widget _buildFounder(int index) {
  return Container(
    height: h,
    width: double.infinity,
    padding: EdgeInsets.all(10.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(FOUNDERS[index].imgUrl),
            ),
            title: Text(
              FOUNDERS[index].name,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(FOUNDERS[index].designation),
            trailing: Icon(Icons.business_center,color: Colors.blue,),
          ),
          Container(
            height: 0.75 * h,
            decoration: BoxDecoration(
              image: DecorationImage(alignment: Alignment.centerRight,
                  image: AssetImage(FOUNDERS[index].imgUrl), fit: BoxFit.cover,),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('email:'+
                  FOUNDERS[index].email,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
        ],
      ),
    ),
  );
}
