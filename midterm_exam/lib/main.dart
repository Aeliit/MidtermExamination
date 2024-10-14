import 'package:flutter/material.dart';
import 'package:midterm_exam/pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/midterm-exam': (context) => MidtermExam(),
      },
    ));

class MidtermExam extends StatefulWidget {
  const MidtermExam({super.key});

  @override
  State<MidtermExam> createState() => _MidtermExamState();
}

class _MidtermExamState extends State<MidtermExam> {
  int cocomelonlevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003049),
      appBar: AppBar(
        backgroundColor: Color(0xfffcbf49),
        title: Text(
          'Ito Ang App',
          style: TextStyle(fontFamily: 'JunigardenSwash'),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cocomelonlevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/bus.jpg'),
                  radius: 70.0,
                ),
                const Text(
                  "Wheels on the bus",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: 'MEGRATH'),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            IconButton(
              icon: Icon(Icons.music_note_sharp),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: () {
                print("the wheels on the bus go round and round");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xfffcbf49),
                  ),
                  Positioned(
                    top: 20.0,
                    left: 40.0,
                    right: 0,
                    child: Row(
                      children: [
                        const Text(
                          "Cocomelon Level:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'MEGRATH',
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '  $cocomelonlevel',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'MEGRATH',
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding widget added below the Positioned widget
                  const Positioned(
                    bottom:
                        20.0, // Adjust this value to change the vertical position
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding:
                          EdgeInsets.all(16.0), // Set the padding as needed
                      child: Text(
                        "BERNARD G. SAHAGUN JR. - BSIT 31E1",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'MEGRATH'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
