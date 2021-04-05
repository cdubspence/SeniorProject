import 'package:flutter/material.dart';
import 'assets.dart';

class ShiftPage extends StatelessWidget {

  String enteredText;
  FocusNode focusNode;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TitleBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(('What is Shift?'),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              Text('This is where all of the info about the shift part of the lessons will go'
                  'and it will be available anytime the member would like to access it.'
                  'The main idea behind shift is to change the way we look and handle the hard times'
                  'in our life. We need to shift our perspective to recognize how that hardship'
                  'has, or can be, a blessing in our life and how we can use it to benefit others.'
                  'Take some time to fill out the journal entry box below and share how any of the hard'
                  'things that have happened to you could possibly be a benefit to others.',
                style: TextStyle(
                  fontSize: 20,
                ),),
              SizedBox(
                height: 20,
              ),
              TextField( controller: controller, onChanged: (newText) { enteredText = newText; }),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Journal Entry Saved.'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Save Entry'),
              ),
              SizedBox(
                height: 100,
              ),
              TextButton(onPressed: () {Navigator.pop(context);}, child: Center(

                child: Text('Back', style: TextStyle(fontSize: 30, color: Colors.teal),),
              ))
            ],
          ),
        ),
      ),
    );

  }
}