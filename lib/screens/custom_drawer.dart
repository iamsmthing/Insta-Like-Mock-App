import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/completed_projects.dart';
import 'package:meals/screens/developer_info.dart';
import 'package:meals/screens/founders.dart';
import 'package:meals/screens/services.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/IMG_20200522_121107.jpg'))
                ),
              ),
              // Image(
              //   height: 200,
              //   width: double.infinity,
              //   image: AssetImage('assets/IMG_20200517_083018.jpg'),
              //   fit: BoxFit.cover,
              // ),
              Positioned(
                child: Text(
                  'Khabai Tech',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600),
                ),
                bottom: 0,
                left: 20,
              ),
            ],
          ),
          _buildDrawerOptions(
              icon: Icon(Icons.people,
                  color: Theme.of(context).primaryColor, size: 30.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CategoriesScreen(),
                  ),
                );
              },
              title: 'Members'),
          _buildDrawerOptions(
              icon: Icon(Icons.account_circle,
                  color: Theme.of(context).primaryColor, size: 30.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Founders()));
              },
              title: 'Our Founders'),
          _buildDrawerOptions(
              icon: Icon(Icons.work,
                  color: Theme.of(context).primaryColor, size: 30.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Projects()));
              },
              title: 'Completed Projects'),
            _buildDrawerOptions(
              icon: Icon(Icons.category,
                  color: Theme.of(context).primaryColor, size: 30.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Services()));
              },
              title: 'Services'),   
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: _buildDrawerOptions(
                icon: Icon(
                  Icons.info_outline,
                  color: Theme.of(context).primaryColor,
                  size: 30.0,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DeveloperInfo()));
                },
                title: 'About Developer'),
          ))
        ],
      ),
    );
  }
}

Widget _buildDrawerOptions({Icon icon, String title, Function onTap}) {
  return Container(
    child: ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onTap: onTap,
    ),
  );
}
