import 'package:flutter/material.dart';
import 'package:ui_design_1/utill/time_display.dart';

var result = null;

class BookTitle extends StatefulWidget {

  final String bookName;
  final String remainDay;
  //final Icon emotionPicture; //Icons can't？
  final icon;
  final Color cubeColor;
  final bool? lastone;

  const BookTitle({
    Key? key,
    required this.bookName,
    required this.remainDay,
    //required this.emotionPicture,
    required this.icon,
    required this.cubeColor,
    this.lastone = false,
  }) : super(key: key);

  @override
  State<BookTitle> createState() => _BookTitleState();
}

class _BookTitleState extends State<BookTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: widget.cubeColor,
                        child: Icon(
                          widget.icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //title
                        Text(
                          widget.bookName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        //subtitle
                        TimeDisplay(
                          timecolor: Colors.grey,
                          wordsize: 14,
                          inputtime: result,
                        ),
                      ],
                    ),
                  ],
                ),

                IconButton(
                  icon:Icon(Icons.more_horiz),
                  onPressed: () async{
                    result = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000,01),
                        lastDate: DateTime(2100,12)
                    );
                  },
                )
              ],
            ),
          ),
        ),
        if(widget.lastone == true)
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                size: 16,
              ),
            ),
          ),
      ],
    );
  }
}


