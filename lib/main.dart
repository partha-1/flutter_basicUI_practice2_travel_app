import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: Icon(Icons.extension)),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text.rich(
              TextSpan(
                text: 'Welcome,',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: TextStyle(fontSize: 50),
            ),
            const Text.rich(
              TextSpan(text: 'Charlie'),
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Search',
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Saved Places",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
              crossAxisCount: 2,
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
