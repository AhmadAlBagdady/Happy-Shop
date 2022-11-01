import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> 
{
  bool isMale=true;
  double height=120;
  int age=25;
  int weight=50;
  //var result=weight/pow(height/100,2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isMale=true;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                             Image.asset("images/male.jpg"),
                               const Icon(
                                  Icons.ac_unit,
                                  size: 70,
                                ),
                               const SizedBox(
                                  height: 17,
                                ),
                               const Text(
                                  'Male',
                                 style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:isMale? Colors.blue:Colors.grey,
                            ),
                          ),
                        ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/female.jpg"),
                                const Icon(
                                  Icons.ac_unit ,
                                  size: 70,
                                ),
                               const SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:isMale?Colors.grey:Colors.purpleAccent,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:  [
                        Text(
                          '${height.round()}',
                          style:const TextStyle(
                            fontSize: 50
                          ),
                        ),
                       const SizedBox(
                          width: 5,
                        ),
                       const Text(
                          'CM',
                        ),

                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80,
                      max:220,
                      onChanged: (value)
                      {
                        setState(() {
                          height=value;
                        });
                      },

                    ),
                  ],
                ),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color:Colors.grey[300],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.grey[300],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                var result=weight/pow(height/100,2);
                print(result.round());
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>  BmiResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result,
                    ),
                 ),
                );
              },
              height: 50,
              child: const Text(
                'calculate'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
