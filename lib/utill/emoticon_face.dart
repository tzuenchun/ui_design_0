import 'package:flutter/material.dart';

var feeling = false;

class EmoticonFace extends StatefulWidget {
  final String? emoticonFeel;
  final String? emoticonFace;
  final bool? replace;

  const EmoticonFace({
    Key? key,
    this.emoticonFeel = '',
    this.emoticonFace = '',
    this.replace = false,
  }) : super(key: key);

  @override
  State<EmoticonFace> createState() => _EmoticonFaceState();
}


class _EmoticonFaceState extends State<EmoticonFace> {
  @override
  Widget build(BuildContext context) {
    print(widget.replace);
    if(feeling == false || widget.replace == true){
      return Column(
        children: [
          Center(
            child: SizedBox(
              height: 65,
              width: 65,
              child: FlatButton(
                child: Text(
                  widget.emoticonFace!,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                color: Colors.blue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: (){
                  feeling = true;
                },
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.emoticonFeel!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      );
    }else{
      return SizedBox(
        height: 0,
      );
    }
  }
}
