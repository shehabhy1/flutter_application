import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/model.dart';
import 'package:flutter_application_1/logic/tune.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});

  final List<TuneModel> tunes = [
    TuneModel(
      color: Color(0xffF44336),
      sound: 'audio/e_kiLl.mp3',
      text: 'gameel',
      icon: Icon(Icons.play_arrow),
    ),
    TuneModel(
      color: Color(0xffF89800),
      sound: 'audio/Just Try.mp3',
      text: 'abdallah',
      icon: Icon(Icons.play_arrow),
    ),
    TuneModel(
      color: Color(0xffFEEB3B),
      sound: 'audio/Never Mind.mp3',
      text: 'abdelrhman',
      icon: Icon(Icons.play_arrow),
    ),
    TuneModel(
      color: Color(0xff4CAF50),
      sound: 'audio/einaudi.mp3',
      text: 'bassant',
      icon: Icon(Icons.play_arrow),
    ),
    TuneModel(
      color: Color(0xff2F9688),
      sound: 'audio/spell.mp3',
      text: 'm khaled ',
      icon: Icon(Icons.play_arrow),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.navigate_before)),
        centerTitle: true,
        title: const Text('Flutter Tune'),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: tunes.map((element) => TuneItem(tune: element)).toList(),

        /* tunes
            .map((loopForEachElement) => TuneItem(tune: loopForEachElement))
            .toList(), */
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
