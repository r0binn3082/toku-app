import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/app_colors.dart';
import 'package:flutter_application_3/components/element.dart';
import 'package:flutter_application_3/screens/Colors.dart';
import 'package:flutter_application_3/screens/Phrases.dart';
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
                            backGroundColor: TokuAppColors.numbersColor,
                            onTap: () =>  Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const Numbers(),
                                ),
                            ),
                            
                            ),
                        // to the  Family memmber screen
                        Category(
                            text:'Family Memmber',
                            backGroundColor: TokuAppColors.familyColor,
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const FamilyMemmberView(),
                                    )
                            ),
                            ),
                        //colors screen
                        Category(
                            text:'Colors',  
                            backGroundColor: TokuAppColors.colorScreenColor,
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const ColorsView() )
                            ),
                            ),
                        //pharses screen
                        Category(
                            text:'Phrases',  
                            backGroundColor:  TokuAppColors.phrasesColor,
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const PhrasesView())
                            ),
                            )
                    ]
            ),
            ),
        );
    }
}


