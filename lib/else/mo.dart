
import 'package:flutter/material.dart';

class Mo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment(0.0,2.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF4siDxi84kN1vPkCwOjsHOpM_qpgyOIaLzQ&usqp=CAU"
                        ),
                        radius: 50.0,
                      ),
                    ),
                  ),
                ),

                Text(
                  "Mohammad Ali Ajaj"
                  ,style: TextStyle(
                    fontSize: 25.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400
                ),
                ),

                SizedBox(
                  height: 15,
                ),

                Text(
                  "mhmdaliajaj@gmail.com"
                  ,style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),

                SizedBox(
                  height: 25.0,
                ),

                Container(
                  width: 400.0,
                  child: TextFormField(
                    //controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String value){
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blueAccent,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(

                      onPressed: (){
                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blueAccent, Colors.blueAccent]
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Update",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80.0,
                    ),
                    RaisedButton(
                      onPressed: (){
                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blueAccent,Colors.blueAccent]
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),

                Container(
                  width: 390.0,
                  height: 50.0,
                  color: Colors.blueAccent,
                  child: MaterialButton(
                    onPressed: () {
                      //print(emailController.text);
                      //print(passwordController.text);
                    },
                    child: Text(
                      'Activities',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height:20.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: (){
                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blueAccent,Colors.blueAccent]
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Like",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: (){
                      },
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blueAccent, Colors.blueAccent]
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
                          alignment: Alignment.center,
                          child: Text(
                            "Comment",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),

                Card(
                  elevation: 6.0,
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("Likes",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(
                                height: 7,
                              ),
                              Text("500",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300
                                ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child:
                          Column(
                            children: [
                              Text("comments",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(
                                height: 7,
                              ),
                              Text("1200",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Like',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(
                      width: 170.0,
                    ),
                    Text(
                      'comment',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                ),

                SingleChildScrollView(
                  child: Container(
                    color: Colors.grey,
                    child: Card(
                      elevation: 20.0,
                      margin: EdgeInsets.symmetric(horizontal:80.0,vertical: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [

                            ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context , index) => buildlikeIteam(),
                              separatorBuilder: (context, index) => Padding(
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


                              itemCount: 6,
                            ),

                            SizedBox(
                              width: 20.0,
                            ),

                            ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context , index) => buildcommentIteam(),
                              separatorBuilder: (context, index) => Padding(
                                padding: const EdgeInsetsDirectional
                                    .only(
                                  start: 20.0,
                                  end: 20.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  color: Colors.grey[300],
                                ),
                              ),


                              itemCount: 6,
                            ),

                          ],
                        ),
                      ),


                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Widget buildcommentIteam() => Row(
    children: [
      SizedBox(
        height: 90.0,
      ),
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJnAURgHNOm-5pTltdETH_ANEVKBBYEKrioQ&usqp=CAU',),
                fit: BoxFit.fill,
              ),
            ),
          ),

        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'perfumes',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'The problem can be identified and the question explained to you ... what you cannot reach in products',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '1/1/2022',
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildlikeIteam() => Row(
    children: [
      SizedBox(
        height: 90.0,
      ),
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJnAURgHNOm-5pTltdETH_ANEVKBBYEKrioQ&usqp=CAU',),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'perfumes',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'The problem can be identified and the question explained to you ... what you cannot reach in products',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '1/1/2022',
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}