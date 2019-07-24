import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chapter.dart';

import 'menuitem.dart';



class ChapterGridView extends StatelessWidget {
  
  
  final List<Chapter> allChapters;

  ChapterGridView({Key key, this.allChapters}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    
    
    return GridView.count(

      crossAxisCount: 2,

      padding: EdgeInsets.all(16.0),

      childAspectRatio: 0.9,

      children: _getGridViewItems(context),

      
    );

  }



  _getGridViewItems(BuildContext context){


    List<Widget> chapterWidgets = new List<Widget>();


    for (int i = 0 ; i < allChapters.length; i++){

      //Here ChapterBody is calling in loop
      var widget = _getGridItemUI(context, allChapters[i]);

      chapterWidgets.add(widget);

    }


    return chapterWidgets;

  }


  //------Chapter Body --------

  _getGridItemUI(BuildContext context, Chapter item){


    return Padding(


      padding: EdgeInsets.all(8.0),


      child: Container(


        decoration: BoxDecoration(


          //LinearGradient Mixs 2 Different Color
          
          gradient: LinearGradient(


            colors: [
              
              new Color(item.color1),
              
              new Color(item.color2)
              
            ],


            begin: Alignment.centerRight,

            end: Alignment(-1.0, -1.0),


          ),

        ),




        child: Column(


          children: <Widget>[


            //-----CONTAINER --------

            Container(


              height: 50.0,


              child: Stack(


                children: <Widget>[


                  Positioned(


                    right: 0.0,
                    
                    top: 0.0,


                    child: PopupMenuButton(


                      //Here PopUpMenu Icon, when it clicks popUp appear

                      icon: Icon(

                        FontAwesomeIcons.ellipsisV,

                        color: Colors.white,
                        
                      ),



                      itemBuilder: (BuildContext context){


                        return menuitems.map((MenuItem menuitem){


                          return PopupMenuItem(


                            child: ListTile(

                              //ICON
                              leading: Icon(
                                
                                menuitem.iconVal, 
                                
                                size: 20.0,
                              
                                color: Color(item.color1),
                              
                              ),


                              title: Text(

                                menuitem.menuVal,

                                style: TextStyle(

                                  color: Colors.black,

                                ),

                              ),


                            ),

                          );
                      
                    
                        }).toList();

                      }

                    ),

                  )

                ],

              ),

            ),



            //--------TEXT OF THE CONTAINERS --------

            Padding(

              padding: const EdgeInsets.only(top: 8.0),

              child: Container(


                child: Text(
                  
                  item.chapterName, 

                  style: TextStyle(

                    color: Colors.white,

                    fontSize: 24.0,

                    fontWeight: FontWeight.bold

                  ),

                ),


              ),

            ),

            //-----------------------------------------


          ],

        ),

      ),

    );


  }





}



