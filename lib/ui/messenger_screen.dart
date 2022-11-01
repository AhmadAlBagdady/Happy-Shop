import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,

            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions:  [
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 15,
                child: Icon(
                  Icons.camera_alt,
                  size: 18,
                  color: Colors.white,
                ),
              ),
          ),
          IconButton(onPressed: (){},
            icon: const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15,
              child: Icon(
                Icons.edit,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
        decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
        ),
               child: Row(
                children:const  [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                      'search'
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                       Stack(
                         alignment: AlignmentDirectional.bottomEnd,
                         children: const[
                           CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                           CircleAvatar(
                             radius: 6.5,
                             backgroundColor: Colors.white,

                           ),
                           CircleAvatar(
                             radius: 6,
                             backgroundColor: Colors.green,

                           ),
                         ],
                       ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children:  [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: const[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,

                            ),
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: Colors.white,

                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'Ahmad AlBughdady',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
                Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(
                                'Mohammad al habool',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,

                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'hello my friend how are you today?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '2:00pm',
                                    style: TextStyle(
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
