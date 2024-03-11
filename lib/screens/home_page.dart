import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/family_member.dart';
import 'number_page.dart';


class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return         
        Scaffold(
            appBar: AppBar(
                backgroundColor:const   Color(0xff463228),
                title: const Text(
                    'Toku',
                    style: TextStyle(color: Colors.white),
                    ) ,
                ),
            body: Center(
                child: Column(
                    children: [
                        // to Numbers screen 
                        Category(
                            text:'Numbers', 
                            backGroundColor: const Color(0xffEF9235),
                            onTap: () =>  Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const Numbers(),
                                )
                            ),
                            ),
                        // to the  Family memmber screen
                        Category(
                            text:'Family Memmber',
                            backGroundColor: const Color(0xff558B37),
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const FamilyMemmberView(),
                                    )
                            ),
                            ),
                        //colors screen
                        Category(text:'Colors',  backGroundColor: const Color(0xff79359F)),
                        //pharses screen
                        Category(text:'Phrases',  backGroundColor: const Color(0xff50ADC7))
                    ]
            ),
            ),
        );
    }
}


// ignore: must_be_immutable
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