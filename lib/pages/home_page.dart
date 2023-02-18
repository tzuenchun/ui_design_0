import 'package:flutter/material.dart';
import 'package:ui_design_1/utill/book_title.dart';
import 'package:ui_design_1/utill/time_display.dart';
import 'package:ui_design_1/widget/text_form.dart';
import 'package:ui_design_1/utill/emoticon_face.dart';

var feeling;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          //BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          //多一個就會正牌消失？
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Hi jered!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, jered!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TimeDisplay(
                            timecolor: Colors.blue.shade200,
                            wordsize: 18,
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //Search bar
                  TextForm(
                    inputTextForm: 'Search',
                    icon: Icons.search,
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          //Use some way to let the more icon can display the feeling
                          print(1);
                          EmoticonFace(
                            replace: true,
                          );
                          print(2);
                        }
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //a different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      EmoticonFace(
                        emoticonFace: '😠',
                        emoticonFeel: 'bad',
                      ),
                      //fine
                      EmoticonFace(
                        emoticonFace: '😶',
                        emoticonFeel: 'fine',
                      ),
                      //well
                      EmoticonFace(
                        emoticonFace: '😀',
                        emoticonFeel: 'well',
                      ),
                      //excellent
                      EmoticonFace(
                        emoticonFace: '😆',
                        emoticonFeel: 'excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child:
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //exercises heading
                            Text(
                              'Book Title',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //listview of exercise
                        Expanded(
                            child: ListView(
                              children: [
                                BookTitle(
                                    bookName: 'Law',
                                    remainDay: '12',
                                    icon: Icons.book,
                                    cubeColor: Colors.orange,
                                ),
                                BookTitle(
                                  bookName: 'History',
                                  remainDay: '12',
                                  icon: Icons.person,
                                  cubeColor: Colors.blue,
                                ),
                                BookTitle(
                                  bookName: 'Math',
                                  remainDay: '12',
                                  icon: Icons.star,
                                  cubeColor: Colors.green,
                                  lastone: true,
                                ),
                              ],
                            ),
                        )
                      ],
                    ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
