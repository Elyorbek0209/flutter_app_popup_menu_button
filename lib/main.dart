import 'package:flutter/material.dart';

import 'package:flutter_app_popup_menu_button/pages/homepage.dart';



void main(){

  runApp(

    new MaterialApp(

      //Here below code we'll remove debug icon from top right corner
      debugShowCheckedModeBanner: false,


      theme: ThemeData(

        //Here color of AppBar
        primaryColor: Color(0xff880e4f),

      ),


      home: HomePage(),

    )

  );

}

