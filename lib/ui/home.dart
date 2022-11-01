import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  //const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
 int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [BottomNavigationBar(
        currentIndex: currentindex,
        items: const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.camera),
            title: Text('else'),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            title: Text('settings'),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
      )],
    );
  }
}
