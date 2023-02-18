import 'package:flutter/material.dart';
import 'package:ui_design_1/pages/home_page.dart';

import '../widget/text_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextForm(
                inputTextForm: 'Name',
                icon: Icons.person,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 53,
                  width: 400,
                  child: FlatButton(
                    color: Colors.blue.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: (){
                      //Navigator.pushNamed(context, '/HomePage', arguments: CustomArgumnets('隨便拉'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}