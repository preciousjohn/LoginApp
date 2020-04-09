import 'package:flutter/material.dart';
import 'package:login_registration_app/registration.dart';
import 'package:login_registration_app/colors.dart';



class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
                child: Column(
                  children: <Widget>[
                    _iconLogin(),
                    _titleLogin(),
                    _textField(),
                    _buildButton(context),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
  Widget _iconLogin(){
    return Image.asset("assets/logo7.png",
      width:250.0,
      height: 250.0,);
  }
  Widget _titleLogin(){
    return Column(
      children: <Widget>[
        Padding(
          padding:EdgeInsets.only(top: 16.0) ,
        ),
        Text(
          "Precoo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top: 12.0),
        ),
        Text(
          "Log into Precoo",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField(){
    return Column(
      children: <Widget>[
        Padding(
          padding:EdgeInsets.only(top: 12.0) ,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width:1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width:3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color:Colors.white),
          autofocus: false,
        ),
        Padding(
          padding:EdgeInsets.only(top: 12.0) ,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width:1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width:3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color:Colors.white),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton (BuildContext context){
    return Column(
      children:<Widget>[
        Padding(
          padding: EdgeInsets.only(top:16.0),),
        InkWell(
          child:Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text('Login',
              style: TextStyle(color: ColorPalette.primaryColor),
              textAlign: TextAlign.center,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top:16.0) ,),
        Text('Dont have an account?', style: TextStyle(color: Colors.white,
          fontSize: 13.0,),
        ),
        FlatButton(
          child: Text('Register',
            style: TextStyle(color: Colors.white),),
          onPressed: (){
            Navigator.pushNamed(context, RegistrationPage.routeName);
          },
        ),
      ],
    );
  }
}