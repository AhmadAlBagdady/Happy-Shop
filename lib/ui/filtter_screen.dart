import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  //FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool withoutbroten = false;

  bool withoutfitamen = false;

  bool withoutmeat = false;

  bool withoutvege = false;

  Widget buildSwitchListTile(String title, String description,
      bool currentValue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filter'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'THIS IS YOUR AVAILABLE FILTERS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                    'Without broten',
                    'this meals without any type of broten',
                    withoutbroten, (newvalue) {
                  setState(() {
                    withoutbroten = newvalue;
                  });
                }),
                buildSwitchListTile(
                    'Without fitamen',
                    'this meals don\'t have any type of fitamen',
                    withoutfitamen, (newvalue) {
                  setState(() {
                    withoutfitamen = newvalue;
                  });
                }),
                buildSwitchListTile(
                    'Without meat',
                    'this meals vegetarins one hundred percent',
                    withoutmeat, (newvalue) {
                  setState(() {
                    withoutmeat = newvalue;
                  });
                }),
                buildSwitchListTile(
                    'Without vegetables',
                    'this meals not healthy completly',
                    withoutvege, (newvalue) {
                  setState(() {
                    withoutvege = newvalue;
                  });
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
