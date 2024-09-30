import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/components/details.dart';



class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
 final List<Number> numbers =[
    Number(enname:'One'  ,jpname:'ichi', image:'assets/images/numbers/number_one.png',sound: 'sounds/numbers/number_one_sound.mp3'),
    Number(enname:'Two'  ,jpname:'Ni', image:'assets/images/numbers/number_two.png',sound: 'sounds/numbers/number_two_sound.mp3'),
    Number(enname:'Three',jpname:'san', image:'assets/images/numbers/number_three.png',sound: 'sounds/numbers/number_three_sound.mp3'),
    Number(enname:'Four' ,jpname:'shi', image:'assets/images/numbers/number_four.png',sound: 'sounds/numbers/number_four_sound.mp3'),
    Number(enname:'Five' ,jpname:'go', image:'assets/images/numbers/number_five.png',sound: 'sounds/numbers/number_five_sound.mp3'),
    Number(enname:'Six'  ,jpname:'roku', image:'assets/images/numbers/number_six.png',sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(enname:'Seven',jpname:'shichi ', image:'assets/images/numbers/number_seven.png',sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(enname:'Eight',jpname:'hachi', image:'assets/images/numbers/number_eight.png',sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(enname:'Nine' ,jpname:'kyuu ', image:'assets/images/numbers/number_nine.png',sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(enname:'Ten'  ,jpname:'juu', image:'assets/images/numbers/number_ten.png',sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers',
        style: TextStyle(
          color: Colors.white,
        ),),
        iconTheme: const IconThemeData(
        color: Colors.white, ),
        backgroundColor:const Color(0xff8E5758) ,

      ),
     
      body: ListView.builder(//build a widget more than one time
        itemCount: numbers.length,
        itemBuilder: (context, index){

          return GeneralItem(
            color:const Color.fromARGB(255, 232, 217, 217) ,
            number: numbers[index]);
        } ,
       
      ),
      );
    
  }
  // List<Widget> getList(List<Number> numbers){
  //   List<Item> itemList=[];// an empty list 
  //   for (int i = 0; i < numbers.length; i++) {// 3ady 3alihom
  //     itemList.add(Item(number: numbers[i], color: const Color(0xffF7F3F3),));
  //   }
  //   return itemList;
  // }
}


