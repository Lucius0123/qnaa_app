import 'package:flutter/material.dart';
import 'package:qnaa_app/home_screeen.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  Color secondColor = Color(0xff1a3464);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondColor,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 80,
            ),
            child: Text(
              'Welcome to the Quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffA1FFD6),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/answer.png'), // Replace with your image path
                fit: BoxFit
                    .cover, // Adjust how the image fits within the container
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Start the Quiz",
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
          )
        ],
      ),
    );
  }
}
