import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  @override
   _AnimatedContainerPageState createState() =>  _AnimatedContainerPageState();
}

class  _AnimatedContainerPageState extends State <AnimatedContainerPage> {

  double _width=50.0;
  double _height=50.0;
  Color _color=Colors.lightBlueAccent;
  BorderRadiusGeometry _borderRadius=BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar:AppBar(
           title:Text('animated container')
         ),
         body:Center(
           child: AnimatedContainer(
             width: _width,
             height: _height,
             duration: Duration(seconds:1),
             curve: Curves.decelerate,
             decoration: BoxDecoration(
               borderRadius: _borderRadius,
               color: _color
               
             ),
             
           )
         ),

         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.eject) ,
           onPressed:_cambiodeforma,
        
           ),

       ),
    );
  }

  void _cambiodeforma(){
    final random=Random();
     setState(() {
        _width=random.nextInt(300).toDouble();
       _height=random.nextInt(300).toDouble();
       _color=Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

       _borderRadius=BorderRadius.circular(random.nextInt(100).toDouble());
     });      
  }
}