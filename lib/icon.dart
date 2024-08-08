import 'package:flutter/material.dart';

class IconChangeExample extends StatefulWidget {
  @override
  _IconChangeExampleState createState() => _IconChangeExampleState();
}

class _IconChangeExampleState extends State<IconChangeExample> {
  bool isPressed = false;

  void changeTheme() {
    setState(() {
      isPressed = !isPressed;
      // ispressed == true
      // ispressed == false
    });
  }

/* 
sally = 5
gameel 25
abdallah 15 
m khaled 15 
wessam 15
 */
  bool changeolorContainer1 = false;
  changeColor1() {
    setState(() {
      changeolorContainer1 = !changeolorContainer1;
    });
  }

  bool changeContainer2 = false;
  changesContainer2() {
    setState(() {
      changeContainer2 = !changeContainer2;
    });
  }

  bool changeContainer3 = false;
  changeColor3() {
    setState(() {
      changeContainer3 = !changeContainer3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isPressed ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Icon Change Example'),
        actions: [
          IconButton(
            onPressed: changeTheme,
            icon: Icon(isPressed ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: changeolorContainer1 ? Colors.amber : Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: changeContainer2 ? Colors.blue : Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: changeContainer3 ? Colors.purple : Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: changeColor1, child: Text('change container 1')),
                ElevatedButton(
                    onPressed: changesContainer2,
                    child: Text('change container 2')),
                ElevatedButton(
                    onPressed: changeColor3, child: Text('change container 3')),
              ],
            )
          ],
        ),
      ),
      /* Center(
        child: IconButton(
          icon: Icon(
            isPressed ? Icons.abc : Icons.navigate_before,
            color: isPressed ? Colors.red : Colors.amber,
// Icons.access_alarm_outlined, // static icon
// color: Colors.black, // static color
            //     color: _isPressed ? Colors.red : Colors.grey,
          ),
          onPressed: iconChanger,
          iconSize: 100.0,
        ),
      ), */
    );
  }
}
