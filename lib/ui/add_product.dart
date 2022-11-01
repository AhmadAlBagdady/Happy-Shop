import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test1/components/compnents.dart';
import 'package:test1/show_product/newhome_screen.dart';
import 'package:test1/else/products.dart';

import '../login/login_screen.dart';

class AddProduct extends StatefulWidget {
  // AddProduct({Key? key}) : super(key: key);
  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  var timeDate = TextEditingController();
  var firstdays=TextEditingController();
  var seconddays=TextEditingController();
  var firstpercent=TextEditingController();
  var secondpercent=TextEditingController();
  var thirdpercent=TextEditingController();
  String? selectedLetter;
  final ImagePicker _imagePicker=ImagePicker();
  List category = ['meat', 'drinks', 'pills', 'vegetables', 'fruit'];
  File? _image;
  bool photoIsTake=false;
  Future getImage(ImageSource source)async{
    var file=await _imagePicker.pickImage(source: source);
    if(file==null) return;
    final imagetemporary=File(file.path);
    setState(() {
      _image=imagetemporary;
      photoIsTake=true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: photoIsTake?Container(
                  height: 270,
                  width: double.infinity,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Image(image: FileImage(_image!)),
                      Positioned(
                        bottom: 17,
                        left: 25,
                        child: MaterialButton(
                          onPressed: (){getImage(ImageSource.gallery);},
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset('images/playstore.png',color: Colors.white,width:45 ,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ):Container(
                  height: 270,
                  width: double.infinity,
                  color: Colors.black26,
                  child: Stack(
                    children: [
                      Center(
                          child: Text(
                        'NO IMAGE',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      )),
                      Positioned(
                        bottom: 17,
                        left: 25,
                        child: MaterialButton(
                          onPressed: (){getImage(ImageSource.gallery);},
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset('images/playstore.png',color: Colors.white,width:45 ,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: textformfield(
                          labeltext: 'Product Name',
                          prefixicon: Icon(Icons.drive_file_rename_outline),
                          border: OutlineInputBorder(),
                        )),
                        MaterialButton(
                          onPressed: () {},
                          child: DropdownButton(
                            hint: Text('Category'),
                            value: selectedLetter,
                            items: category.map((item) {
                              return DropdownMenuItem(
                                child: Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (newVal) {
                              setState(() {
                                selectedLetter = newVal as String?;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    textformfield(
                        labeltext: 'Facebook Link',
                        prefixicon: Icon(Icons.link),
                        border: OutlineInputBorder(),
                        textInputType: TextInputType.url),
                    SizedBox(
                      height: 20,
                    ),
                    textformfield(
                        labeltext: 'Phone Number',
                        prefixicon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                        textInputType: TextInputType.numberWithOptions()),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: textformfield(
                            border: OutlineInputBorder(),
                            controller: timeDate,
                            labeltext: 'Expire date',
                            prefixicon: Icon(Icons.calendar_today_outlined),
                            onTap: () {
                              showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2030-01-01'))
                                  .then((value) {
                                print(value.toString());
                                timeDate.text = DateFormat.yMMMd().format(value!);

                              });
                            },
                            validate: (value) {
                              if (value!.isEmpty)
                                print('date must not be empty');
                              return null;
                            },
                            textInputType: TextInputType.datetime),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(height: 1 ,color: Colors.grey,),
                    SizedBox(height: 10,),
                    Positioned(
                      right: 50,
                        child: Text('Price',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    Row(
                      children: [
                        Text('Discount 1 : '),
                        SizedBox(width: 10,),
                        Expanded(child: textformfield(border: OutlineInputBorder(),labeltext: 'Days',textInputType: TextInputType.number,controller: firstdays)),
                        SizedBox(width: 10,),
                        Text('Percent :'),
                        SizedBox(width: 10,),
                        Expanded(child: textformfield(border: OutlineInputBorder(),textInputType:TextInputType.number,controller: firstpercent)),
                        SizedBox(width: 10,),
                        Text('%',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Discount 2 :  '),
                        SizedBox(width: 10,),
                        Expanded(child: textformfield(border: OutlineInputBorder(),labeltext: 'Days',textInputType: TextInputType.number,)),
                        SizedBox(width: 10,),
                        Text('Percent :'),
                        SizedBox(width: 10,),
                        Expanded(child: textformfield(border: OutlineInputBorder(),textInputType:TextInputType.number,)),
                        SizedBox(width: 10,),
                        Text('%',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Else : '),
                        SizedBox(width: 10,),

                        Text('Percent :'),
                        SizedBox(width: 10,),
                        Expanded(child: textformfield(border: OutlineInputBorder(),textInputType:TextInputType.number)),
                        SizedBox(width: 10,),
                        Text('%',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color:Colors.blue,child: MaterialButton(onPressed: (){},child:Text('Add Product',style: TextStyle(fontSize: 20,color: Colors.white),))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
