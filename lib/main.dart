import 'package:flutter/material.dart';

import 'package:sampleproject/Job.dart';
import 'secondApp.dart';
void main() {
  runApp(secondApp());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    return MaterialApp(
      title: 'Job Portal',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Job Portal'),
        ),
        body:
        Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Search Here...',
                ),
              //  onChanged: onItemChanged,
              ),
            ),
            SizedBox(height: 20,),
            Center(
                child: JobsListView()
            ),
          ],
        )
       /* */
      ),
    );
  }
}
