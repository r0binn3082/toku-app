import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/app_colors.dart';
import 'package:flutter_application_3/components/element.dart';

class PhrasesView extends StatelessWidget {
    const PhrasesView({super.key});
    final List<ListMemmber> phrases = const [
        ListMemmber(
            jpName: 'Kimasu ka', 
            enName: 'Are you coming', 
            sound: 'sound/phrases/are_you_coming.wav'
        ),
        ListMemmber(
            jpName: 'Kōdoku suru koto o wasurenaide kudasai', 
            enName: 'dont forget to subscribe', 
            sound: 'sound/phrases/dont_forgot_to_subscribe.wav'
        ),
        ListMemmber(
            jpName: 'Go kibun wa ikagadesu ka', 
            enName: 'how are you feeling', 
            sound: 'sound/phrases/how_are_you_feeling.wav'
        ),
        ListMemmber(
            jpName: 'Watashi wa anime ga daisukidesu', 
            enName: 'i love anime', 
            sound: 'sound/phrases/i_love_anime.wav'
        ),
        ListMemmber(
            jpName: 'Watashi wa puroguramingu ga daisukidesu', 
            enName: 'i love anime', 
            sound: 'sound/phrases/i_love_programming.wav'
        ),
        ListMemmber(
            jpName: 'Puroguramingu wa kantandesu', 
            enName: 'programming is easy', 
            sound: 'sound/phrases/programming_is_easy.wav'
        ),
        ListMemmber(
            jpName: 'Anata no namae wa nandesuka', 
            enName: 'what is your name', 
            sound: 'sound/phrases/whai_is_your_name.wav'
        ),
        ListMemmber(
            jpName: 'Doko ni iku no', 
            enName: 'where are you going ', 
            sound: 'sound/phrases/where_are_you_going.wav'
        ),
        ListMemmber(
            jpName: 'Hai, kimasu', 
            enName: 'yes im coming', 
            sound: 'sound/phrases/yes_im_coming.wav'
        )

    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('phrases'),
                backgroundColor: TokuAppColors.phrasesColor,
            ),
                body: Container(
                    color: TokuAppColors.phrasesColor,
                    child: ListView.builder(
                    itemCount: phrases.length,
                    itemBuilder: (BuildContext context, int index) {
                        return NoImageListElement(data: phrases[index], backGroundColor: TokuAppColors.phrasesColor,);
                    },
                ),
                ),
        );
    }
}