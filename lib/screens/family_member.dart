import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/element.dart';

// ignore: must_be_immutable
class FamilyMemmberListElement extends ListElement {
    late ListMemmber data;
    FamilyMemmberListElement({
        super.key, 
        required this.data
        }) : super(
            textEng: data.enName,
            textJap: data.jpName,
            imageName: data.image,
            backGroungColor: const Color(0xff558B37) ,
        );
    
    @override
    Widget build(BuildContext context) {
        return super.build(context);
    }
}

class FamilyMemmberView extends StatelessWidget {
    const FamilyMemmberView({super.key});

    final  List<ListMemmber> family  = const [
        ListMemmber(
        jpName: 'chich',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png',
        ),
        ListMemmber(
        jpName: 'Musume',
        enName: 'daughter',
        image: 'assets/images/family/family_daughter.jpg',
        ),
        ListMemmber(
        jpName: 'Sofu',
        enName: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        ),
        ListMemmber(
        jpName: 'Sobo',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        ),
        ListMemmber(
        jpName: 'Ani',
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        ),
        ListMemmber(
        jpName: 'Ane',
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        ),
        ListMemmber(
        jpName: 'Musuko',
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        ),
        ListMemmber(
        jpName: 'Otōto',
        enName: 'younger brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        ),
        ListMemmber(
        jpName: 'Imōto',
        enName: 'younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
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
                    return FamilyMemmberListElement(data: family[index]);
                },
            ),
        );
    }
}

