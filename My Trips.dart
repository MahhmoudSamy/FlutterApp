import 'package:flutter/material.dart';
import 'package:untitled14/widgets/widget-trips.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Trips',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 20
            ),
            child: Icon(
              Icons.access_time_sharp,
              color: Color.fromARGB(241, 49, 197, 66),
            ),
          ),
        ],
      ),
      body: Container(
        decoration:  BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.vertical(
            top:Radius.circular(20),
          )
        ),
        child: ListView.builder(
          padding: const EdgeInsets.only(
            top: 15
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => const Item(),
        ),
      )
    );
  }
}