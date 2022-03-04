import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferedCourses extends StatefulWidget {
  const OfferedCourses({Key? key}) : super(key: key);

  @override
  _OfferedCoursesState createState() => _OfferedCoursesState();
}

class _OfferedCoursesState extends State<OfferedCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offered Courses")),
      body: Container(
        child: GridView(
          children: [
            Container(

              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
             child: Column(

               //crossAxisAlignment: CrossAxisAlignment.center,

               children: [
                 Text("1st", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                 Divider(
                   color: Colors.white,
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                 Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                 Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                 Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
               ],
             ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("2nd", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("3rd", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("4th", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("5th", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("6th", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("7th", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                //margin: EdgeInsets.only(left: 5,top: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(

                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text("8th", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("ENG-1111:English Reading & Speaking", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold,),),

                    Text("MAT-1111:Differential and Integral Calculus", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1111:Introduction to Computers", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1112:Introduction to Computer Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CHE-2312:Chemistry Laboratory", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CEE-2110:Engeneering Drawing", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("ENG-1311:English Writing and Listening", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("MAT-1213:Linear Algebra and Complex Analysis", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1213:Computer Programming", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("CSE-1214:Computer Programming Sessional", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),

                    Text("CSE-1215:Discrete Mathematics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("PHY-2211:General Physics", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                  ],
                ),

              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
