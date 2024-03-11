import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/element.dart';

class Numbers extends StatelessWidget {
    const Numbers({super.key});
    final backColor = const Color(0xffEF9235);
    final Number one = const Number(
        jpName: 'ici', 
        enName: 'one', 
        image: 'assets/images/numbers/number_one.png'
    );
    final Number two = const Number(
        jpName: 'Ni', 
        enName: 'two', 
        image: 'assets/images/numbers/number_two.png'
    );
    final Number three = const Number(
        jpName: 'San', 
        enName: 'three', 
        image: 'assets/images/numbers/number_three.png'
    );
    final Number four = const Number(
        jpName: 'Shi', 
        enName: 'four', 
        image: 'assets/images/numbers/number_four.png'
    );
    final Number five = const Number(
        jpName: 'Go', 
        enName: 'five', 
        image: 'assets/images/numbers/number_five.png'
    );
    final Number six= const Number(
        jpName: 'Roku', 
        enName: 'six', 
        image: 'assets/images/numbers/number_six.png'
    );
    final Number seven= const Number(
        jpName: 'Sebun', 
        enName: 'seven', 
        image: 'assets/images/numbers/number_seven.png'
    );
    final Number eight= const Number(
        jpName: 'hachi', 
        enName: 'eight', 
        image: 'assets/images/numbers/number_eight.png'
    );
    final Number nine= const Number(
        jpName: 'Kyū', 
        enName: 'nine', 
        image: 'assets/images/numbers/number_nine.png'
    );
    final Number ten= const Number(
        jpName: 'Jū', 
        enName: 'ten', 
        image: 'assets/images/numbers/number_ten.png'
    );

    @override
    Widget build(BuildContext context) {
        return
        Scaffold(
            appBar:   AppBar(
                title: const  Text(
                    'Numbers',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                ),
                backgroundColor: const Color(0xff463228),
            ),
            
            body: ListView(
                children: [
                    //number one
                    ListElement(
                        textEng: one.enName, 
                        textJap: one.jpName, 
                        imageName: one.image, 
                        backGroungColor: backColor, 
                    ),
                    //number twi
                    ListElement(
                        textEng: two.enName, 
                        textJap: two.jpName, 
                        imageName: two.image, 
                        backGroungColor: backColor, 
                    ),
                    //three number
                    ListElement(
                        textEng: three.enName, 
                        textJap: three.jpName, 
                        imageName: three.image, 
                        backGroungColor: backColor, 
                    ),
                    // four  numver
                    ListElement(
                        textEng: four.enName, 
                        textJap: four.jpName, 
                        imageName: four.image, 
                        backGroungColor: backColor, 
                    ),
                    //five number
                    ListElement(
                        textEng: five.enName, 
                        textJap: five.jpName, 
                        imageName: five.image, 
                        backGroungColor: backColor, 
                    ),
                    //six number
                    ListElement(
                        textEng: six.enName, 
                        textJap: six.jpName, 
                        imageName: six.image, 
                        backGroungColor: backColor, 
                    ),
                    //seven number
                    ListElement(
                        textEng: seven.enName, 
                        textJap: seven.jpName, 
                        imageName: seven.image, 
                        backGroungColor: backColor, 
                    ),
                    //eight
                    ListElement(
                        textEng: eight.enName, 
                        textJap: eight.jpName, 
                        imageName: eight.image, 
                        backGroungColor: backColor, 
                    ),
                    // nine number
                    ListElement(
                        textEng: nine.enName, 
                        textJap: nine.jpName, 
                        imageName: nine.image, 
                        backGroungColor: backColor, 
                    ),
                    // ten number
                    ListElement(
                        textEng: ten.enName, 
                        textJap: ten.jpName, 
                        imageName: ten.image, 
                        backGroungColor: backColor, 
                    ),
                ],
            ),
        );
    }
}

class Number {
    final String jpName;
    final String enName;
    final String image;
    
    const   Number({
        required this.jpName,
        required this.enName,
        required this.image
    });
}