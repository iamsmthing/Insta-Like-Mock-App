import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class MemberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   centerTitle: true,title: Text('Khabai Tech'),
      // ),
      body: ListView.builder(
          physics: ScrollPhysics(),
          itemCount: DUMMY_POST.length,
          itemBuilder: (context, i) {
            return _buildFeed(i);
          }),
    );
  }
}

const double h = 400.0;
Widget _buildFeed(int index) {
  return Container(
    height: h,
    width: double.infinity,
    padding: EdgeInsets.all(2.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: AssetImage(DUMMY_POST[0].imgUrl),
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              title: Text(DUMMY_POST[index].title),
              subtitle: Text(DUMMY_POST[index].subtitle),
              trailing: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blue,
                  ),
                  onPressed: null)),
          Container(
            height: 0.6 * h,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(DUMMY_POST[index].imgUrl)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.blue),
                      onPressed: null),
                  Text(
                    DUMMY_POST[index].like,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   IconButton(
                  icon: Icon(
                    Icons.comment,
                    color: Colors.blue,
                  ),
                  onPressed: null),
                  Text(
                    DUMMY_POST[index].comment,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.blue,
                  ),
                  onPressed: null)
            ],
          ),
        ],
      ),
    ),
  );
}
