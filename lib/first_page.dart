import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Text(
                  "Navigation Page",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
