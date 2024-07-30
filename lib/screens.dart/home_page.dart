import 'package:flutter/material.dart';
import 'package:geo_locator/models/pagesdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(navbaritems.length, (index) {
            return Container(
              padding: const EdgeInsets.all(10),
              width: size.width / navbaritems.length,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                icon: Icon(
                  navbaritems[index],
                  color: _currentIndex == index ? Colors.black : Colors.grey,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
