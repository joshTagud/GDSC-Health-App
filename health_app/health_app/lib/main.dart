import 'package:flutter/material.dart';
import 'reminders_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health App Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mental Health App basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  int _selectedIndex = 0;
  static const TextStyle titleStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle descripStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.normal);
  static const List<Widget> _widgetOptions = <Widget>[
    Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'profile screen\n', style: titleStyle),
          TextSpan(text: 'displays stats of account and character. click on character to customize?', style:descripStyle)
        ]
      )
    ),
    const RemindersScreen(),
    Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'reminders screen\n', style: titleStyle),
          TextSpan(text: 'shows list of reminders and whether or not you completed reminders', style:descripStyle)
        ]
      )
    ),
    Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'movtivation/affirmations screen\n', style: titleStyle),
          TextSpan(text: 'displays list of randomized daily affirmations/movtivations in a list', style:descripStyle)
        ]
      )
    ),
    Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'insprational stories screen\n', style: titleStyle),
          TextSpan(text: 'shows inspirational stories from different people i guess in a list', style:descripStyle)
        ]
      )
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl),
            label: 'Reminders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake),
            label: 'Motivation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Inspirational Sotries',
          ),  
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}