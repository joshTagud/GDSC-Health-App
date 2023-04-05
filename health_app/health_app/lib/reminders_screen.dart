import 'package:flutter/material.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({Key? key}) : super(key: key);

  final List<String> reminders = const [
    "Drink water",
    "Take medication",
    "Do exercise",
    "Meditate",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reminders"),
      ),
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(reminders[index]),
            trailing: Checkbox(
              value: false,
              onChanged: (bool? value) {
                // Do something when the checkbox is checked or unchecked
              },
            ),
          );
        },
      ),
    );
  }
}
