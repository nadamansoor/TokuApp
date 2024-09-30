import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/components/details.dart';

class ColorPage extends StatelessWidget {
   ColorPage({super.key});
  final List<Number> numbers =[
    Number(sound: 'sounds/colors/black.wav', enname: 'black', jpname: 'Burakku', image: 'assets/images/colors/color_black.png'),
    Number(sound: 'sounds/colors/brown.wav', enname: 'brown', jpname: 'Chairo', image: 'assets/images/colors/color_brown.png'),
    Number(sound: 'sounds/colors/dusty yellow.wav', enname: 'dusty yellow', jpname: 'Hokori ppoi kiiro', image: 'assets/images/colors/color_dusty_yellow.png'),
    Number(sound: 'sounds/colors/gray.wav', enname: 'gray', jpname: 'Guree', image: 'assets/images/colors/color_gray.png'),
    Number(sound: 'sounds/colors/red.wav', enname: 'red', jpname: 'Aka', image: 'assets/images/colors/color_red.png'),
    Number(sound: 'sounds/colors/green.wav', enname: 'green', jpname: 'Midori', image: 'assets/images/colors/color_green.png'),
    Number(sound: 'sounds/colors/white.wav', enname: 'white', jpname: 'Shiro', image: 'assets/images/colors/color_white.png'),
    Number(sound: 'sounds/colors/yellow.wav', enname: 'yellow', jpname: 'kiiro', image: 'assets/images/colors/yellow.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors',
        style: TextStyle(
          color: Colors.white
        ),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:const Color(0xFF618E57) ,
      ),
       body: ListView.builder(//build a widget more than one time
        itemCount: numbers.length,
        itemBuilder: (context, index){

          return GeneralItem(
            color:const Color(0xffDCE8DA) ,
            number: numbers[index]);
        } ,
       )
    );
  }
}