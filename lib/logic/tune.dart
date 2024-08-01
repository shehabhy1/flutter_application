import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/model.dart';

class TuneItem extends StatefulWidget {
  const TuneItem({super.key, required this.tune});
/* 
bassant 5 + 5 + 10 + 20 
gameel 5 
abdallah 5 + 5 + 20 + 10
gamell 5 + 5 + 20 
shahnda 5 + 5 + 5 + 20 + 10
sally 5 + 20 + 10 
khaled 20
 */
  final TuneModel tune;

  @override
  State<TuneItem> createState() => _TuneItemState();
}

class _TuneItemState extends State<TuneItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.tune.playSound();
          // tune.playSound();
        },
        child: Container(
          width: double.infinity,
          color: widget.tune.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.tune.text),
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    //  widget.tune.icon?Icon(Icons.abc):Icon(icons)
                  });
                  widget.tune.pause();
                },
                onTap: () {
                  widget.tune.playSound();
                },
                child: widget.tune.icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});

  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
 */