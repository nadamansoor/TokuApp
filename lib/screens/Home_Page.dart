import 'package:flutter/material.dart';
import 'package:tokuapp/screens/color_page.dart';
import 'package:tokuapp/screens/family_members_page.dart';
import 'package:tokuapp/screens/phrases_page.dart';
import 'Numbers_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
          appBar: AppBar(
            backgroundColor:const Color.fromARGB(255, 15, 38, 73) ,
            title: const Text('Toku',
            style: TextStyle(
              color: Colors.white
            ),),
          ),
          body:Column(
            children: [
              
             Catogry(
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (Context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              color: const Color(0xff8E5758),
             ),
              
             Catogry(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return FamilyMembersPage();
                }));
              },
              text: 'Family Members',
              color: const Color(0xFF83898b),
             ),
              
             Catogry(
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context){
                    return ColorPage();
                 }));
              },
              text: 'Colors',
              color: const Color(0xFF618E57),
             ),

              
             Catogry(
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context){
                  return PhrasesPage();
                 }));
              },
              text: 'Phrases',
              color: const Color(0xFF83A4B3),
             ),

            ],
          ) ,
      );
  }
}

// for every contaianer
class Catogry extends StatelessWidget {
  Catogry ({this.text , this.color, this.onTap});
  final String? text ;
  final Color? color;

 final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(//revice anythng for user
      onTap: onTap,

      child: Container(
                  alignment: Alignment.centerLeft,
                  padding:const EdgeInsets.only(left:17),
                  height: 65,
                  width: double.infinity,//all the space 
                      color: color,
                      child: Text(
                        text!,// the ! for sure not null 
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      ),
                      
                ),
    );
  }
}