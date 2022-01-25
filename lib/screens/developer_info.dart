import 'package:flutter/material.dart';

class DeveloperInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Developer Info'),
      ),
      body: SingleChildScrollView(
              child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10.0),
          height: MediaQuery.of(context).size.height ,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 95.0,
                backgroundImage: AssetImage('assets/IMG_20200517_082404.jpg'),
              ),
              Divider(
                color: Colors.grey,
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(12),
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Name:',style: TextStyle(fontSize: 20.0,color: Colors.blue),),
                        Text('Shivam Kumar Roy',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: <Widget>[
                        Text('Designation:',style: TextStyle(fontSize: 20.0,color: Colors.blue)),
                        Text('Flutter Developer',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Skills:',style: TextStyle(fontSize: 20.0,color: Colors.blue)),
                        Expanded(
                            child: Text(
                          'Web Development, UI/UX ,\nDesign,Python,Provider,\nPHP,Dart,Flutter,Redux, FireBase,FireStore,etc',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),
                          overflow: TextOverflow.visible,
                        ))
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('E-mail:',style: TextStyle(fontSize: 20.0,color: Colors.blue)),
                        Expanded(child: Text('shivamkumarroy@programmer.net',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),))
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: <Widget>[
                        Text('Contact:',style: TextStyle(fontSize: 20.0,color: Colors.blue)),
                        Text('+917903023412',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('What\'s Next:',style: TextStyle(fontSize: 20.0,color: Colors.blue)),
                        Expanded(child: Text('Let\'s Learn Together To Reach Newer Heights',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
