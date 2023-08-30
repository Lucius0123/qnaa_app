import 'package:flutter/material.dart';
import 'package:qnaa_app/home_screeen.dart';
import 'package:qnaa_app/start_screen.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  final List view;
  const ResultScreen(this.score, this.view, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Color ctColor = Color(0xff117eeb);
  Color secondColor = Color(0xff1a3464);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        height: 550,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Text(
                      "Congratulation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "You completed the quiz",
                      style: TextStyle(
                        color: Color(0xff8298FD),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Your Result is:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 5, right: 20),
                padding: EdgeInsets.only(left: 5, right: 5),
                width: double.infinity,
                color: Color(0xff8298FD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Score",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              for (int i = 0; i < widget.view.length; i++)
                Container(
                  margin: EdgeInsets.only(left: 20, top: 5, right: 20),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: double.infinity,
                  color: Color(0xff8298FD),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Question ${i + 1}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " ${widget.view[i]}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xff01EBA4),
        ),
        child: Column(
          children: [
            Container(
              child: Text(
                "Total Score : ${widget.score}",
                style: TextStyle(
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                  color: secondColor,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyScreen()));
                    },
                    child: Text(
                      "Go to Home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: secondColor,
                      backgroundColor: Color(0xff8298FD),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Repeat the Quiz",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: secondColor,
                      backgroundColor: Color(0xff8298FD),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
