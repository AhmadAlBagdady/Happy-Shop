import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Code1 extends StatelessWidget {
  const Code1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
    Container(
      color:Colors.black,
        child: Center(child: Text('Hello World',style: TextStyle(color: Colors.white),))));
  }
}class Code2 extends StatelessWidget {
  const Code2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title:Text('Example title'),
        actions: [Icon(Icons.search)],
      ),
      body:Center(child: Text('Hello World')),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.add)),
    );
  }
}class Code3 extends StatelessWidget {
  const Code3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:MaterialButton(onPressed: (){},child: Container(decoration:BoxDecoration(color:Colors.green,borderRadius: BorderRadius.circular(50)),width:double.infinity,height: 40,child: Center(child: Text('Engage'))),))
    );
  }
}class Code4 extends StatefulWidget {
  const Code4({Key? key}) : super(key: key);

  @override
  State<Code4> createState() => _Code4State();
}

class _Code4State extends State<Code4> {
  @override
  int counter=0;
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [MaterialButton(onPressed: (){setState(() {counter++;
      });},color:Colors.blue,child:Text('Increment')),SizedBox(width: 10,),Text('Count:$counter')],))
    );
  }
}
