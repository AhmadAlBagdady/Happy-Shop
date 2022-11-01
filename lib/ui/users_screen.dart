import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
 });
}
class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);
  List<UserModel> users=[
    UserModel(id: 1, name: 'ahmad', phone: '+202202565'),
    UserModel(id: 2, name: 'mohammad', phone: '+207982565'),
    UserModel(id: 3, name: 'sleem', phone: '+202279455'),
    UserModel(id: 1, name: 'ahmad', phone: '+202202565'),
    UserModel(id: 2, name: 'mohammad', phone: '+207982565'),
    UserModel(id: 3, name: 'sleem', phone: '+202279455'),
    UserModel(id: 2, name: 'mohammad', phone: '+207982565'),
    UserModel(id: 3, name: 'sleem', phone: '+202279455'),
    UserModel(id: 1, name: 'ahmad', phone: '+202202565'),
    UserModel(id: 2, name: 'mohammad', phone: '+207982565'),
    UserModel(id: 3, name: 'sleem', phone: '+202279455'),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text(
          'OMar',
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context, index) => buildUseritem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length)


    );
  }
  Widget buildUseritem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:  [
         CircleAvatar(
          radius:25,
          child: Text(
            '${user.id}',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              '${user.name}',
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
