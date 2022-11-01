import 'package:flutter/material.dart';
import 'package:test1/ui/comments.dart';

class Profile extends StatelessWidget {

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
                  width: 350.0,
                  child: TextFormField(
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
                  alignment: Alignment.center,
                  width: 300.0,
                  height: 50.0,
                  color: Colors.blueAccent,
                  child: Text(
                    'Activities',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),

                Container(
                  width: 400,
                  child: Card(
                    elevation: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Likes',
                                  style: TextStyle(
                                    color:Colors.blue,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Center(
                                child: Text(
                                  '500',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20.0,
                        ),

                        Column(
                          children: [
                            TextButton(
                              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CommentScreen()));},
                              child: Text(
                                'comments',
                                style: TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '1200',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Card(

                      elevation: 20.0,
                      margin: EdgeInsets.symmetric(horizontal:1.0,vertical: 0.0),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 300,
                            child: SingleChildScrollView(
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
                                    itemCount: 15,
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
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
  Widget buildlikeIteam() => Row(
    children: [
      SizedBox(
        height: 90.0,
      ),
      CircleAvatar(
        child:
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJnAURgHNOm-5pTltdETH_ANEVKBBYEKrioQ&usqp=CAU',),
              fit: BoxFit.fill,
            ),
          ),
        ),
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
          ],
        ),
      ),
    ],
  );
}
