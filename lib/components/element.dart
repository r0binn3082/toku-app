import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ListElement extends StatelessWidget {
    late String imageName;
    late String textJap;
    late String textEng; 
    late Color backGroungColor;
    final behindImageColor = const Color(0xffFFF6DC);

    ListElement({
        required this.textEng,  
        required this.textJap, 
        required this.imageName, 
        required this.backGroungColor, 
        super.key, 
    });

    @override
    Widget build(BuildContext context) {
        return 
        Container(
            height: 85.0,
            color: backGroungColor,
            child: Row(
                children: [
                    Container(
                        color: behindImageColor,
                        child:  Image.asset(imageName),
                    ),
                        Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                    textJap,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                    ),
                                Text(
                                    textEng,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                    )
                            ],
                        ),
                    ),
                    
                    const Spacer( flex: 1,),
                    const Padding(
                        padding:  EdgeInsets.only(right:18 ),
                        child:  Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 32,
                        ),
                    )
                ],
            ),
        );
    }
}

class ListMemmber {
    final String jpName;
    final String enName;
    final String image;
    
    const   ListMemmber({
        required this.jpName,
        required this.enName,
        required this.image
    });
}

class CustomedAppBar extends StatelessWidget {
    const CustomedAppBar({super.key});

    @override
    Widget build(BuildContext context) {
        return AppBar(
            backgroundColor:const   Color(0xff463228),
            title: const Text(
            'Toku',
            style: TextStyle(color: Colors.white),
            ) ,
        );
    }
}