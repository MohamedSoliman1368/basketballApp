import 'package:flutter/material.dart';

void main() {
  runApp( PointsCounter());
}

class PointsCounter extends StatefulWidget {

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoint=0;

  int teamBpoint=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',
                      style: TextStyle(
                        fontSize:45,

                      ),),
                    Text('$teamApoint',
                      style: TextStyle(
                        fontSize: 170,

                      ),),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                          minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamApoint++;
                          });
                        },
                        child: Text('Add 1 Point',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    )),
                    SizedBox(height: 16,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamApoint+=2;
                          });
                        }, child: Text('Add 2 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                    SizedBox(height: 16,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamApoint+=3;
                          });
                        }, child: Text('Add 3 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text('Team B',
                      style: TextStyle(
                        fontSize:45,

                      ),),
                    Text('$teamBpoint',
                      style: TextStyle(
                        fontSize: 170,

                      ),),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBpoint++;
                          });
                        }, child: Text('Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                    SizedBox(height: 16,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBpoint+=2;
                          });
                        }, child: Text('Add 2 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                    SizedBox(height: 16,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            minimumSize:Size(50, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBpoint+=3;
                          });
                        }, child: Text('Add 3 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                    minimumSize:Size(145, 45)
                ),
                onPressed: (){
                  setState(() {
                    teamApoint=0;
                    teamBpoint=0;
                  });
                }, child: Text('Reset',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            )),
            Spacer(flex: 5,)

          ],
        ),
      ),
    );
  }
}
