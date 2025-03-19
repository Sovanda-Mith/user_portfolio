import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            width: 300,
            height: 300,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pf.jpg'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
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
          const Text(
            "Hi I'm",
            style: TextStyle(
                fontSize: 38,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'),
          ),
          Text(
            "Mith Sovanda",
            style: TextStyle(
                fontSize: 38,
                color: Colors.blue[400],
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'),
          ),
          const Text(
            "Software",
            style: TextStyle(
                fontSize: 38,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'),
          ),
          const Text(
            "Engineer",
            style: TextStyle(
                fontSize: 38,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'),
          ),
          const Text(
            "I'm a really adaptable person who is always looking for new challenges and opportunities.",
            style:
                TextStyle(fontSize: 24, color: Color.fromRGBO(50, 50, 50, 1.0)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: 400,
              height: 60,
              child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    final url = Uri.parse(
                        'https://www.instagram.com/sovanda_mith?igsh=MWVhcnNqNnJzMW82cA==');
                    _launchURL(url);
                  },
                  child: const Text(
                    'Hire Me!',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ))),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: 400,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    final url = Uri.parse(
                        'https://www.linkedin.com/in/sovanda-mith-46751518b/');
                    launchUrl(url);
                  },
                  style: const ButtonStyle(
                      side: WidgetStatePropertyAll<BorderSide>(
                          BorderSide(color: Colors.blue))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Download CV',
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                      Icon(
                        Icons.download,
                        color: Colors.blue,
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
