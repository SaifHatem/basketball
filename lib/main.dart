import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(basketball());
}

class basketball extends StatefulWidget {
  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  //const basketball({super.key});
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('Add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide debug Word
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Coulmn
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),

                      // Add Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Vertical Divider
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 35,
                    endIndent: 25,
                  ),
                ),

                //Second Coulmn
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),

                      // Add Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            //Resposible for color of the button
                            primary: Colors.orange,
                            minimumSize: Size(150, 45)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //Resposible for color of the button
                  primary: Colors.orange,
                  minimumSize: Size(150, 45)),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
                print(teamAPoints);
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
