import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'app_drawer.dart';

class AboutPage extends MyApp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.purple,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              '../assets/logo.png', // Replace with your image path
              height: 300.0,
              width: 1500.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to My Ecommerce App! This app was created using Flutter and is designed to showcase some basic ecommerce functionality. You can browse a list of products, view product details, and even add products to your cart or buy them directly. We hope you enjoy using our app!',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
