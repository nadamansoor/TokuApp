import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';
import 'package:tokuapp/components/details.dart';


class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  final List<Number> numbers =[
    Number(enname:'Mother'         ,jpname:'okāsan', image:'assets/images/family_members/family_mother.png'         ,sound: 'sounds/family_members/mother.wav'),
    Number(enname:'father'         ,jpname:'otōsan', image:'assets/images/family_members/family_father.png'         ,sound: 'sounds/family_members/father.wav'),
    Number(enname:'Daughter'       ,jpname:'musume', image:'assets/images/family_members/family_daughter.png'       ,sound: 'sounds/family_members/daughter.wav'),
    Number(enname:'Son'            ,jpname:'musuko', image:'assets/images/family_members/family_son.png'            ,sound: 'sounds/family_members/son.wav'),
    Number(enname:'Older sister'   ,jpname:'onēsan', image:'assets/images/family_members/family_older_sister.png'   ,sound: 'sounds/family_members/older sister.wav'),
    Number(enname:'Older brother'  ,jpname:'onīsan', image:'assets/images/family_members/family_older_brother.png'  ,sound: 'sounds/family_members/older bother.wav'),
    Number(enname:'Younger sister' ,jpname:'imōto ', image:'assets/images/family_members/family_younger_sister.png' ,sound: 'sounds/family_members/younger sister.wav'),
    Number(enname:'Younger brother',jpname:'otōto',  image:'assets/images/family_members/family_younger_brother.png',sound: 'sounds/family_members/younger brohter.wav'),
    Number(enname:'Grand mother'   ,jpname:'obāsan', image:'assets/images/family_members/family_grandmother.png'    ,sound: 'sounds/family_members/grand mother.wav'),
    Number(enname:'Grand father'   ,jpname:'ojiisan',image:'assets/images/family_members/family_grandfather.png'    ,sound: 'sounds/family_members/grand father.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members ',
        style: TextStyle(
          color: Colors.white,
        ),),
        iconTheme: const IconThemeData(
        color: Colors.white, ),
        backgroundColor:const Color(0xFF83898b) ,

      ),
      body: ListView.builder(//build a widget more than one time
        itemCount: numbers.length,
        itemBuilder: (context, num){

         return GeneralItem(number: numbers[num], color: const Color(0xffDCDDDE),);
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