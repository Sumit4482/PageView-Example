import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController controller = PageController();

  final _list = const [
    Center(
      child: Page(
        text: "Page One",
        color: Colors.teal,
      ),
    ),
    Center(
      child: Page(
        text: "Page Two",
        color: Colors.amber,
      ),
    ),
    Center(
      child: Page(
        text: "Page Three",
        color: Colors.redAccent,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Page View"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: PageView(
          allowImplicitScrolling: true,
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: (value) {
            setState(() {});
          },
          children: _list,
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
