import 'package:flutter/material.dart';
import 'package:tokuapp/components/details.dart';
import 'package:tokuapp/components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({super.key});
  final List<Number> phrasesList =[
    Number(sound: 'sounds/phrases/are_you_coming.wav',          enname: 'Are you coming?',           jpname: 'Kimasu ka?'),
    Number(sound: 'sounds/phrases/dont_forget_to_subscribe.wav',enname: 'Do not forget to subscribe',jpname: 'Wasurezu ni tōroku shite kudasai'),
    Number(sound: 'sounds/phrases/how_are_you_feeling.wav',     enname: 'How are you feeling?',      jpname: 'Kibun wa dō desu ka?'),
    Number(sound: 'sounds/phrases/i_love_anime.wav',            enname: 'I love anime.',             jpname: 'Anime ga daisuki desu.'),
    Number(sound: 'sounds/phrases/i_love_programming.wav',      enname: 'I love programming.',       jpname: 'Puroguramingu ga daisuki desu.'),
    Number(sound: 'sounds/phrases/programming_is_easy.wav',     enname: 'Programming is easy.',      jpname: 'Puroguramingu wa kantan desu.' ),
    Number(sound: 'sounds/phrases/what_is_your_name.wav',       enname: 'What is your name?',        jpname: 'O-namae wa nan desu ka?'),
    Number(sound: 'sounds/phrases/where_are_you_going.wav',     enname: 'Where are you going?',      jpname: 'Doko ni iku no desu ka?'),
    Number(sound: 'sounds/phrases/yes_im_coming.wav',           enname: 'Yes, I am coming.',         jpname: 'Hai, ikimasu.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases',
        style: TextStyle(
          color: Colors.white
        ),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:const Color(0xFF83A4B3) ,
      ),
       body: ListView.builder(//build a widget more than one time
        itemCount: phrasesList.length,
        itemBuilder: (context, index){

          return PhrasesItem(
            color:const Color(0xffDCE8DA) ,
            number: phrasesList[index]);
        } ,
       )
    );
  }
}