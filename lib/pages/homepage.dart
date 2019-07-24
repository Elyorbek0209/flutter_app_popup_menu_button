import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chapter.dart';

import 'chaptergridview.dart';






class HomePage extends StatelessWidget {
 

  final List<Chapter> _allChapter = Chapter.chapterList();

 
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
          
          icon:Icon(
            
            FontAwesomeIcons.arrowLeft,
          
            color: Colors.white

          ),

          onPressed: (){

            //

          },

        ),


        title: Text("Pop Up Menu"),

        actions: <Widget>[


          IconButton(icon: Icon(

            FontAwesomeIcons.search,

            color: Colors.white,

          ),

          onPressed: (){

              //

          },

          )

        ],

      ),


      body: getHomePageBody(context),

   
    );

  }



  getHomePageBody(BuildContext context){

    return ChapterGridView(allChapters: _allChapter);

  }

}
















