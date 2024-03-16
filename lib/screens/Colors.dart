import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/app_colors.dart';
import 'package:flutter_application_3/components/element.dart';

class ColorsView extends StatelessWidget {
    const ColorsView({super.key});

    final List<ListMemmber> colorsElments = const[
        ListMemmber(jpName: 'Kuro', enName: 'BLack', image: 'assets/images/colors/color_black.png', sound: 'sound/colors/black.wav'),
        ListMemmber(jpName: 'Chairo', enName: 'brown', image: 'assets/images/colors/color_brown.png',sound: 'sound/colors/brown.wav'),
        ListMemmber(jpName: 'Dasutiierō', enName: 'Dusty Yellow', image: 'assets/images/colors/color_dusty_yellow.png', sound: 'sound/colors/dusty yellow.wav'),
        ListMemmber(jpName: 'Gurē', enName: 'Gray', image: 'assets/images/colors/color_gray.png', sound: 'sound/colors/gray.wav'),
        ListMemmber(jpName: 'Midori', enName: 'Green', image: 'assets/images/colors/color_green.png', sound: 'sound/colors/green.wav'),
        ListMemmber(jpName: 'Aka', enName: 'Red', image: 'assets/images/colors/color_red.png', sound: 'sound/colors/red.wav'),
        ListMemmber(jpName: 'Shiro', enName: 'White', image: 'assets/images/colors/color_white.png', sound: 'sound/colors/white.wav'),
        ListMemmber(jpName: 'Kiiro', enName: 'Yellow', image: 'assets/images/colors/color_yellow.png', sound: 'sound/colors/yellow.wav'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: CustomedAppBar(
                text: 'Colors',
                backGroundColor:TokuAppColors.colorScreenColor ,
                ),
                body: ListView.builder(
                    itemCount: colorsElments.length,
                    itemBuilder: (BuildContext context, int index) {
                        return ListElement(data: colorsElments[index], backGroundColor: TokuAppColors.colorScreenColor);
                },
            ),
        );
    }
}