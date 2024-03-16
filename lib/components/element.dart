// ignore_for_file: must_be_immutable
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//?audio player object to play audios 
final AudioPlayer _playsound = AudioPlayer();

//?widgets in listview
class ListElement extends StatelessWidget {
    late final ListMemmber data;
    late final Color backGroundColor;
    ListElement({
        super.key,
        required this.data,
        required this.backGroundColor
    });

    @override
    Widget build(BuildContext context) {
        return 
        Container(
            height: 85.0,
            color: backGroundColor,
            child: Row(
                children: [
                    Container(
                        color: Colors.white,
                        child:  Image.asset(data.image!),
                    ),
                    Expanded(child: NoImageListElement(data: data, backGroundColor: backGroundColor, ))
                ]
            ),
        );
    }
}

//? class for collecting the viewed on screen data 
class ListMemmber {
    final String jpName;
    final String enName;
    final String? image;
    final String sound;
    
    const   ListMemmber({
        required this.jpName,
        required this.enName,
        this.image,
        required this.sound
    });
}

//?app Bar widget for every screen 
class CustomedAppBar extends AppBar {
    late  String text;
    late Color backGroundColor;
    CustomedAppBar({super.key, required this.text, required this.backGroundColor});

    Widget build(BuildContext context) {
        return AppBar(
            backgroundColor:   backGroundColor,
            title:  Text(
            text,
            style:const TextStyle(color: Colors.white),
            ) ,
        );
    }
}

//? home page element widget
class Category extends StatelessWidget {
    late String text;
    late Color backGroundColor;
    Function()? onTap;
    
    Category({super.key, required this.text , required this.backGroundColor, this.onTap});

    @override
    Widget build(BuildContext context) {
        return   
        GestureDetector(
            onTap: onTap,
            child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 24),
                height: 65,
                width: double.infinity, // to have all the scren container
                color:  backGroundColor,
                child:  Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    ),
                    ),
            ),
        );
    }
}

//?the element row with no omage
class NoImageListElement extends StatelessWidget {
    late  ListMemmber data;
    late Color backGroundColor;
    NoImageListElement({super.key, required this.data, required this.backGroundColor});

    @override
    Widget build(BuildContext context) {
        return 
                Container(
                    color: backGroundColor,
                    child: Row( 
                        children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text(
                                        data.jpName,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14, 
                                        ),
                                        textAlign: TextAlign.left,
                                        ),
                                    Text(
                                        data.enName,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14
                                        ),
                                        textAlign: TextAlign.left,
                                        )
                                ],
                            )
                            ),
                            const Spacer( flex: 1),
                            Padding(
                                padding: const EdgeInsets.only(right:18 ),
                                child:  GestureDetector(
                                    onTap: () {
                                        _playsound.play(AssetSource(data.sound));
                                    } ,
                                    child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 32,
                                    ),
                                ),
                            )
                        ]
                    ),
                );
        }
}
