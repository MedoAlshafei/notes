import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Notes',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () {
                    // Add your action here
                  },
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 70),
          ],
        ),
      ),
    );
  }
}
