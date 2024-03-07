import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                    overflow: TextOverflow.ellipsis,
                    'Hello Coding Is Life, how are you?')),SizedBox(height: 10,),
            Container(
                width: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                    overflow: TextOverflow.fade,
                    'Hello Coding Is Life, how are you?')),
            Container(
              width: 100,
              child: Text(
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  'Hello Coding is life, how are you?'),
            ),
            Container(
              width: 100,
              child: Text(
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  'Hello Coding is life, how are you?'),
            ),

            const Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: ' beautiful ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),

SizedBox(height: 20,),
            Container(
              width: 100,
              child: Text(
                  'Hello Coding is life, how are you?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Colors.red,
                fontStyle: FontStyle.italic
              ),
              ),
            ),


          ],
        ),
      )
    );
  }
}
