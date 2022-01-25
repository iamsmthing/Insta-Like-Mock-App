import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Completed Projects'),
      ),
      body: ListView.builder(
          itemCount: DUMMY_PROJECTS.length,
          itemBuilder: (context, i) {
            return _buildProjects(DUMMY_PROJECTS[i].imgUrl);
          }),
    );
  }
}

Widget _buildProjects(String imgUrl) {
  return InkWell(
    splashColor: Colors.blue,
    child: Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4.0,
        child: ClipRRect(borderRadius: BorderRadius.circular(15.0),
          child: Image( fit: BoxFit.cover,
            image: AssetImage(imgUrl),
          ),
        ),
      ),
    ),
  );
}
