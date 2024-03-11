import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/element.dart';

class ColorListElment extends ListElement {
    late ListMemmber data;
    ColorListElment({
        super.key,
        required this.data
    }) : super (
        textJap: data.jpName,
        textEng: data.enName,
        imageName: data.image,
        backGroungColor: const Color(0xff79359F)
    );
    @override
    Widget build(BuildContext context) {
        return super.build(context);
    }
}

class ColorsView extends StatelessWidget {
    const ColorsView({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                
            ),
        );
    }
}