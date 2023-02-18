import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {

  final String inputTextForm;
  final icon;

  const TextForm({
    Key? key,
    required this.inputTextForm,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: inputTextForm,
          hintText: inputTextForm,
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),

          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.4),
          ),


          filled: true,
          fillColor: Colors.blue[600],
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
    //無法輸入的Search格子
    /*return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );*/
  }
}

//為啥stateful會找不到變數？
/*class TextForm extends StatefulWidget {

  final String textFormInput;

  const TextForm({
    Key? key,
    required this.textFormInput,
  }) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: textFormInput,
          hintText: textFormInput,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),

          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.4),
          ),


          filled: true,
          fillColor: Colors.blue[600],
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}*/
