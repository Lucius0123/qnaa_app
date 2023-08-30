import 'package:flutter/material.dart';
import 'package:qnaa_app/Models/question_model.dart';
import 'package:qnaa_app/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _question = [
    Question(id: '1', title: 'who develope flutter?', Option: {
      'Mata': false,
      'Apple': false,
      'Google': true,
      'Microshoft': false
    }),
    Question(
        id: '2',
        title: 'Which programming language is used by Flutter',
        Option: {'Ruby': false, 'Dart': true, 'C++': false, 'java': false}),
    Question(id: '3', title: 'Who created Dart programming language?', Option: {
      'Lars Bak and Kasper Lund': true,
      'Brendan Eich': false,
      'Jeremy Ashkenas': false,
      'Bjarne Stroustrup': false
    }),
    Question(id: '4', title: 'What is Flutter?', Option: {
      'Flutter is an open-source backend development framework': false,
      'Flutter is an open-source UI toolkit': true,
      'Flutter is an open-source programming language for cross-platform applications':
          false,
      'Flutters is a DBMS toolkit': false
    }),
    Question(
        id: '5',
        title: 'How many types of widgets are there in Flutter?',
        Option: {'2': true, '4': false, '6': false, '8+': false}),
    Question(
        id: '6',
        title:
            'When building for iOS, Flutter is restricted to an __ compilation strategy',
        Option: {
          'AOT (ahead-of-time)': true,
          'JIT (Just-in-time)': false,
          'Transcompilation': false,
          'Recompilation': false
        }),
    Question(
        id: '7',
        title: 'A sequence of asynchronous Flutter events is known as a:',
        Option: {
          ' Flow': false,
          'Current': false,
          'Stream': true,
          'Series': false
        }),
    Question(
        id: '8',
        title:
            'Access to a cloud database through Flutter is available through which service?',
        Option: {
          'SQLite': false,
          'Firebase Database': true,
          'NOSQL': false,
          'MYSQL': false
        }),
    Question(
        id: '9',
        title:
            'What are some key advantages of Flutter over alternate frameworks?',
        Option: {
          'Rapid cross-platform application development and debugging tools':
              false,
          'Future-proofed technologies and UI resources': false,
          'Strong supporting tools for application development and launch':
              false,
          'All of the above': true
        }),
    Question(
        id: '10',
        title:
            'What element is used as an identifier for components when programming in Flutter?',
        Option: {
          'Widgets': false,
          'Keys': true,
          'Elements': false,
          'Serial': false
        }),
    Question(
        id: '11',
        title: 'What type of test can examine your code as a complete system?',
        Option: {
          'Unit tests': false,
          'Widget tests': false,
          'Integration Tests': true,
          'All of the above': false
        }),
    Question(
        id: '12',
        title:
            'What type of Flutter animation allows you to represent real-world behavior?',
        Option: {
          'Physics-based': true,
          'Maths-based': false,
          'Graph-based': false,
          'Sim-based': false
        }),
    Question(
        id: '13',
        title:
            'True or false: Flutter boasts improved runtime performance over most application frameworks.',
        Option: {
          'True': true,
          'False': false,
        }),
    Question(
        id: '14',
        title:
            'Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?',
        Option: {
          'main()': false,
          'runApp()': true,
          'container()': false,
          'root()': false
        }),
    Question(
        id: '15',
        title:
            'What is the key configuration file used when building a Flutter project?',
        Option: {
          'pubspec.yaml': true,
          'pubspec.xml': false,
          'config.html': false,
          'root.xml': false
        }),
    Question(
        id: '16',
        title:
            'True or False: Flutter teams are inherently more difficult to manage because the framework is so new.?',
        Option: {
          'True': true,
          'False': false,
        }),
    Question(
        id: '17',
        title: 'What widget would you use for repeating content in Flutter?',
        Option: {
          'ExpandedView': false,
          'ListView': true,
          'Stack': false,
          'ArrayView': false
        }),
    Question(
        id: '18',
        title: 'Flutter supports desktop application development.?',
        Option: {
          'True': true,
          'False': false,
        }),
    Question(
        id: '19',
        title:
            'What is a drawback of Flutter that might lead you to choose another solution?',
        Option: {
          'Non-native looking application UI': false,
          'Large application footprint': false,
          'A relatively unproven framework and language': false,
          'All of the above': true,
        }),
    Question(
        id: '20',
        title:
            "What language is Flutter's rendering engine primarily written in ?",
        Option: {'Kotlin': false, 'C++': true, 'Dart': false, 'Java': false}),
  ];
  List view = [];
  int score = 0;
  int index = 0;
  bool isPrassed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color ctColor = Color(0xff117eeb);
  Color secondColor = Color(0xff1a3464);
  PageController? _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    int totalques = _question.length;
    return Scaffold(
      backgroundColor: Color(0xffB6C4FF),
      appBar: AppBar(
        backgroundColor: Color(0xff1a3464),
        title: Text(
          "Quiz App",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: PageView.builder(
        controller: _controller,
        itemCount: _question.length,
        onPageChanged: (page) {
          setState(() {
            isPrassed = false;
          });
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Question ${index + 1}/$totalques " +
                        _question[index].title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              for (int i = 0; i < _question[index].Option.length; i++)
                Container(
                  margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    color: isPrassed
                        ? _question[index].Option.entries.toList()[i].value
                            ? isTrue
                            : isWrong
                        : secondColor,
                    onPressed: isPrassed
                        ? () {}
                        : () {
                            setState(() {
                              isPrassed = true;
                            });
                            if (_question[index]
                                .Option
                                .entries
                                .toList()[i]
                                .value) {
                              score += 10;
                              view.add("10");
                            } else {
                              setState(() {
                                ctColor = isWrong;
                                view.add("0");
                              });
                            }
                          },
                    child: Text(
                      '${_question[index].Option.keys.toList()[i]}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              Container(
                width: 200,
                height: 60,
                padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                margin: EdgeInsets.only(left: 150, right: 10, top: 150),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: secondColor,
                  ), // Text color
                  onPressed: isPrassed
                      ? index + 1 == _question.length
                          ? () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ResultScreen(score, view)));
                            }
                          : () {
                              _controller!.nextPage(
                                  duration: Duration(milliseconds: 750),
                                  curve: Curves.linear);
                              setState(() {
                                isPrassed = false;
                              });
                            }
                      : null,
                  child: Text(
                    index + 1 == _question.length
                        ? "See Result"
                        : "Next Question",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
