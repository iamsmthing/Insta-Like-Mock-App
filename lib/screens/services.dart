import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: DUMMY_SERVICES.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(splashColor: Colors.blue,
              onTap: (){print(index);},
              child: ListTile(
                contentPadding: EdgeInsets.all(12),
                trailing: Icon(Icons.star,color: Colors.green,),
                subtitle:Text( DUMMY_SERVICES[index].projects,) ,
                title: Text(
                  DUMMY_SERVICES[index].title,
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontStyle: FontStyle.italic),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    DUMMY_POST[index].imgUrl,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
