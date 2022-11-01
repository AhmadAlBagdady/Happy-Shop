import 'package:flutter/material.dart';

class CommentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: ListView.separated(
          itemBuilder: (context, index) => buildproduct(),
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
  Widget buildproduct() => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Container(
        width: 60.0,
        height: 60.0,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image: DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJnAURgHNOm-5pTltdETH_ANEVKBBYEKrioQ&usqp=CAU',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        width: 15.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'perfumes',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 250,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'The problem can be identified and the question explained to you ... what you cannot reach in products',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '22:00 AM',
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
