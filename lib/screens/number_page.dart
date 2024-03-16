import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/app_colors.dart';
import 'package:flutter_application_3/components/element.dart';

class Numbers extends StatelessWidget {
    const Numbers({super.key});

    // ?list that has all numbers as class in 
    final List<ListMemmber> numbersData = const [
        ListMemmber(
        jpName: 'ici', 
        enName: 'one', 
        image: 'assets/images/numbers/number_one.png',
        sound: 'sound/numbers/number_one_sound.mp3'
        ),
        ListMemmber(
        jpName: 'Ni', 
        enName: 'two', 
        image: 'assets/images/numbers/number_two.png',
        sound: 'sound/numbers/number_two_sound.mp3'
        ),
        ListMemmber(
            jpName: 'San', 
            enName: 'three', 
            image: 'assets/images/numbers/number_three.png',
            sound: 'sound/numbers/number_three_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Shi', 
            enName: 'four', 
            image: 'assets/images/numbers/number_four.png',
            sound: 'sound/numbers/number_four_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Go', 
            enName: 'five', 
            image: 'assets/images/numbers/number_five.png',
            sound: 'sound/numbers/number_five_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Roku', 
            enName: 'six', 
            image: 'assets/images/numbers/number_six.png',
            sound: 'sound/numbers/number_six_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Sebun', 
            enName: 'seven', 
            image: 'assets/images/numbers/number_seven.png',
            sound: 'sound/numbers/number_seven_sound.mp3'
        ),
        ListMemmber(
            jpName: 'hachi', 
            enName: 'eight', 
            image: 'assets/images/numbers/number_eight.png',
            sound: 'sound/numbers/number_eight_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Kyū', 
            enName: 'nine', 
            image: 'assets/images/numbers/number_nine.png',
            sound: 'sound/numbers/number_nine_sound.mp3'
        ),
        ListMemmber(
            jpName: 'Jū', 
            enName: 'ten', 
            image: 'assets/images/numbers/number_ten.png',
            sound: 'sound/numbers/number_ten_sound.mp3'            
        ),
    ];


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
            
            body: ListView.builder(
                itemCount: numbersData.length,
                itemBuilder: (BuildContext context, int index) {
                    return ListElement(data: numbersData[index], backGroundColor: TokuAppColors.numbersColor)  ;
                },
            ),
        );
    }
}

