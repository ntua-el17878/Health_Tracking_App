import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Doctor/navigationDrawer.dart';

class DoctorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child:
                  Image.asset('assets/images/backround.jpg', fit: BoxFit.cover),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset("assets/images/Logo2.png"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationDrawer();
                },
              ),
            );
          },
        ),
        actions: [
          TextButton(
            child: const Text(
              "Appointments",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text(
              "Patients",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text(
              "Info",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
