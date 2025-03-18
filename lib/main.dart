import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/icon.png')),
                  SizedBox(
                    width: 8,
                  ),
                  Text('i12react'),
                ],
              ),
              IconButton(
                onPressed: () {
                  print("Icon Clicked");
                },
                icon: const Icon(Icons.menu),
              )
            ],
          ),
        ),
        body: const CustomBody(),
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            width: 350,
            height: 350,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pf.jpg'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Welcome to my Portfolio',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(
                  50,
                  50,
                  50,
                  1.0,
                ),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
