
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    num days = 2330;
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter App')
      ),
      body: Text('total days are $days'),
      
        drawer: const AppDrawer(),
    );
  }
}

