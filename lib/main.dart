import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool? val = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Vikasbandhu'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: val,
                  onChanged: (value) {
                    setState(() {
                      val = value;
                    });
                  }),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Record'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    alignment: Alignment.center,
                    fixedSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
