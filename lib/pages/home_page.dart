
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    num days = 2330;
    return Scaffold(
      appBar: AppBar(
        title:Text('Flutter App')
      ),
      body: Container(
        child: Text('total days are $days')
        ),
        drawer: Drawer(),
    );
  }
}

