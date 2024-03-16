import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/app_colors.dart';
import 'package:flutter_application_3/components/element.dart';

class FamilyMemmberView extends StatelessWidget {
    const FamilyMemmberView({super.key});

    final  List<ListMemmber> family  = const [
        ListMemmber(
        jpName: 'chich',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sound/family_members/father.wav',
        ),
        ListMemmber(
        jpName: 'Musume',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sound/family_members/daughter.wav',
        ),
        ListMemmber(
        jpName: 'Sofu',
        enName: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sound/family_members/grand father.wav',
        ),
        ListMemmber(
        jpName: 'Sobo',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sound/family_members/grand mother.wav',
        ),
        ListMemmber(
        jpName: 'Ani',
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sound/family_members/older bother.wav',
        ),
        ListMemmber(
        jpName: 'Ane',
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sound/family_members/older sister.wav',
        ),
        ListMemmber(
        jpName: 'Musuko',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sound/family_members/son.wav',
        ),
        ListMemmber(
        jpName: 'Otōto',
        enName: 'younger brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'sound/family_members/younger brohter.wav',
        ),
        ListMemmber(
        jpName: 'Imōto',
        enName: 'younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'sound/family_members/youngr sister.wav',
        ),
    ];
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar (
            title: const Text('Family Members'),
            backgroundColor: const Color(0xff46322B),
        ),
            body: ListView.builder(
                itemCount: family.length,
                itemBuilder: (BuildContext context, int index) {
                    return ListElement(data: family[index], backGroundColor: TokuAppColors.familyColor,);
                },
            ),
        );
    }
}

