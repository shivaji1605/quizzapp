import 'package:flutter/material.dart';

class MyQuizzApp extends StatefulWidget {
  @override
  State createState() {
    return _MyQuizzAppState();
  }
}

class _MyQuizzAppState extends State {
  static int countResult = 0;
  int selectAnswer = -1;
  int currentIndex = 0;

  List<Map> quectionlist = [
    {
      "quection": "Which of the following is not a Java primitive data type??",
      "options": [
        "int",
        "float",
        "bool",
        "String",
      ],
      "correctAnswer": 3,
    },
    {
      "quection": " What is the default value of a boolean variable in Java??",
      "options": ["true", "false", "null", "0"],
      "correctAnswer": 1,
    },
    {
      "quection": "Which keyword is used to inherit a class in Java?",
      "options": ["this", "impliments", "extends", "super"],
      "correctAnswer": 2,
    },
    {
      "quection": " Which method is the entry point of any Java program?",
      "options": [
        "main()",
        "start()",
        "init()",
        "run()",
      ],
      "correctAnswer": 0,
    },
    {
      "quection": "Which of the following is not an access modifier in Java?",
      "options": [
        "public",
        "private",
        "protected",
        "package",
      ],
      "correctAnswer": 3,
    },
    {
      "quection": "What is the size of an int in Java?",
      "options": ["8 bit", "16 bit", "32 bit", "64 bit"],
      "correctAnswer": 2,
    },
    {
      "quection": "Which keyword is used to prevent a class from being subclassed?",
      "options": ["abstract", "final", "static", "const"],
      "correctAnswer": 1,
    },
    {
      "quection": "n Java, which collection class stores unique elements only?",
      "options": ["list", "map", "set", "queue"],
      "correctAnswer": 2,
    },
    {
      "quection": "What will happen if you write System.exit(0); in a Java program?",
      "options": ["program pauses", "program restarts", "program terminates", "Eroor"],
      "correctAnswer": 2,
    },
    {
      "quection": "Which of these exceptions is checked at compile timere there in a leap year?",
      "options": ["NullPointerException", "IOException ", "ArithmeticException", "ArrayIndexOutOfBoundsException"],
      "correctAnswer": 1,
    },
  ];

  Color checkAnswer(int index) {
    if (selectAnswer == -1) {
      return Colors.white;
    }

    int correctAnswer = quectionlist[currentIndex]["correctAnswer"];

    if (index == correctAnswer) {
      ++countResult;
      return Colors.green;
    }

    if (index == selectAnswer) {
      --countResult;
      return Colors.red;
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    if (selectAnswer != 5) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 188, 225, 235),
          
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 188, 225, 235),
            centerTitle: true,
            title: Text(
              " Quizz App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 46, 13, 117),
              ),
            ),
          ),
          body: Stack(
            
            children: [
              Positioned.fill(
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/047/113/787/small/abstract-technology-background-with-binary-code-free-vector.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              SingleChildScrollView(
                child: Column(
                  
                  children: [
                    
                    SizedBox(height: 20),
                    Text(
                      "Question out of ${currentIndex + 1}/${quectionlist.length}",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color:Colors.black,
                      ),
                    ),
                    SizedBox(height: 40),

                    SingleChildScrollView(
                      
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        
                        children: [
                          SizedBox(width: 40),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              height: 160,
                              width: 300,
                              child: Center(
                                child: Text(
                                  quectionlist[currentIndex]["quection"],
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w600,
                                    color:Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),

                    ElevatedButton(
                      onPressed: () {
                        if (selectAnswer == -1) {
                          selectAnswer = 0;

                          setState(() {});
                        }
                      },

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          checkAnswer(0),
                        ),
                      ),
                      child: SizedBox(
                        height: 38,
                        width: 250,

                        child: Center(
                          child: Text(
                            quectionlist[currentIndex]["options"][0],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        if (selectAnswer == -1) {
                          selectAnswer = 1;

                          setState(() {});
                        }
                      },

                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          checkAnswer(1),
                        ),
                      ),

                      child: SizedBox(
                        height: 38,
                        width: 250,
                        child: Center(
                          child: Text(
                            quectionlist[currentIndex]["options"][1],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        if (selectAnswer == -1) {
                          selectAnswer = 2;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          checkAnswer(2),
                        ),
                      ),

                      child: SizedBox(
                        height: 38,
                        width: 250,
                        child: Center(
                          child: Text(
                            quectionlist[currentIndex]["options"][2],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        if (selectAnswer == -1) {
                          selectAnswer = 3;
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          checkAnswer(3),
                        ),
                      ),

                      child: SizedBox(
                        height: 38,
                        width: 250,
                        child: Center(
                          child: Text(
                            quectionlist[currentIndex]["options"][3],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 150),

                    Row(
                      children: [
                        SizedBox(width: 15),

                        FloatingActionButton(
                          onPressed: () {
                            if (currentIndex > 0) {
                              currentIndex--;
                              selectAnswer = -1;
                            }
                            setState(() {});
                          },
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        SizedBox(width: 250),
                        FloatingActionButton(
                          onPressed: () {
                            if (selectAnswer != -1) {
                              if (currentIndex < quectionlist.length - 1) {
                                currentIndex++;

                                selectAnswer = -1;
                              } else {
                                selectAnswer = 5;
                              }
                            }

                            setState(() {});
                          },
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,

            title: Text(
              "Result DashBoard",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/007/804/683/original/firecracker-in-dark-sky-night-night-background-footage-celebration-concept-free-video.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 10),
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/029/343/160/non_2x/ai-generative-hand-holding-gold-trophy-cup-with-confetti-celebrating-with-trophy-award-for-success-realistic-free-photo.jpg",
                  ),
              
                  SizedBox(height: 30),

                  Text(
                    "Congratulations!!",
                    style: TextStyle(
                      fontSize: 50,
                      color: const Color.fromARGB(255, 238, 110, 6),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You Got $countResult marks , Stay Focused !!",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 238, 110, 6),
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      SizedBox(width: 230),
                      FloatingActionButton(
                        onPressed: () {
                          selectAnswer = -1;
                          currentIndex = 0;

                          setState(() {});
                        },
                        backgroundColor: Colors.deepOrange,
                        child: Text(
                          "home",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}