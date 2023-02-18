import 'package:flutter/material.dart';

var now = DateTime.now();
var month = now.toString().substring(5,7);
var day = now.toString().substring(8,10);
var year = now.toString().substring(0,4);
var different;

class TimeDisplay extends StatefulWidget {
  final Color timecolor;
  final double wordsize;
  final DateTime? inputtime;

  const TimeDisplay({
    Key? key,
    required this.timecolor,
    required this.wordsize,
    this.inputtime,
  }) : super(key: key);

  @override
  State<TimeDisplay> createState() => _TimeDisplayState();
}

class _TimeDisplayState extends State<TimeDisplay> {
  @override
  Widget build(BuildContext context) {
    switch(month){
      case '01': {month = "Jan. "; break;};
      case '02': {month = "Feb. "; break;};
      case '03': {month = "Mar. "; break;};
      case '04': {month = "Apr. "; break;};
      case '05': {month = "May. "; break;};
      case '06': {month = "Jun. "; break;};
      case '07': {month = "Jul. "; break;};
      case '08': {month = "Aug. "; break;};
      case '09': {month = "Sep. "; break;};
      case '10': {month = "Oct. "; break;};
      case '11': {month = "Nov. "; break;};
      case '12': {month = "Dec. "; break;};
    }

    different = widget.inputtime?.difference(now).inDays;
    if(different != null){
      return Text(
          'Remain ' + different.toString() + ' Days',
          style:TextStyle(
            fontSize: widget.wordsize,
            color: widget.timecolor,
          )
      );
    }else{
      return Text(
          month + day + ',' + year,
          style:TextStyle(
            color: widget.timecolor,
          )
      );
    }
  }
}
