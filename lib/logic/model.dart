import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;
  final String text;
  Widget icon;
  static final AudioPlayer player = AudioPlayer();
  TuneModel(
      {required this.color,
      required this.sound,
      required this.text,
      required this.icon});
////////////////////////////////////////////////////////
  ///
  pause() {
    player.pause();
  }

  playSound() async {
    // Stop any currently playing sound
    await player.stop();

    // Play the new sound
    await player.play(AssetSource(sound));
  }
  /* playSound() async {
    // Stop any currently playing sound
    await player.stop();
    // Play the new sound
    await player.play(AssetSource(sound));

    /* final Color color;
  final String sound;

  static final AudioPlayer _player = AudioPlayer();
  const TuneModel({required this.color, required this.sound});

  */
  } */
}
