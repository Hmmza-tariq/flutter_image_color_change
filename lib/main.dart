import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Color primaryColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorFiltered(
                colorFilter: ColorFilter.mode(primaryColor, BlendMode.hue),
                child: Container(
                    color: Colors.white,
                    child:
                        Image.asset("assets/flutter_doctor_transparent.png"))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                circularButtons(Colors.red),
                circularButtons(Colors.blue),
                circularButtons(Colors.orange),
                circularButtons(Colors.yellow),
                circularButtons(Colors.purple),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget circularButtons(Color color) {
    return GestureDetector(
      onTap: () => setState(() {
        primaryColor = color;
      }),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
