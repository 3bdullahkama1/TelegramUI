import 'package:flutter/material.dart';
import 'package:telegram/database/users_data.dart';
import 'package:telegram/modules/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text(
          "Telegram",
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return users[index];
        },
      ),
    );
  }
}
