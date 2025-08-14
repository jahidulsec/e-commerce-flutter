import 'package:e_commerce_app/shared/widgets/shapes/containers/primary_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [PrimaryHeaderContainer(child: Column())]),
      ),
    );
  }
}

