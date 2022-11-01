import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/login/login_screen.dart';
import '../cubit/cubit.dart';

class NewSettingsScreen extends StatefulWidget {
  const NewSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NewSettingsScreen> createState() => _NewSettingsScreenState();
}

class _NewSettingsScreenState extends State<NewSettingsScreen> {
  bool withoutbroten = false;

  bool withoutfitamen = false;

  bool withoutmeat = false;

  bool withoutvege = false;
  bool changeswich=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Settings',
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(Icons.language),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Switch(activeColor: Colors.black38,value: changeswich, onChanged: (value){}),

                ],
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));},
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Icon(Icons.logout),
                    SizedBox(width: 10,),
                    Text(
                      'Log out ',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

Widget buildSwitchListTile(String title, String description, bool currentValue,
    Function(bool) updateValue) {
  return SwitchListTile(
    title: Text(title),
    value: currentValue,
    subtitle: Text(description),
    onChanged: updateValue,
  );
}
