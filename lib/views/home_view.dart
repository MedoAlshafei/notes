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
            CustomAppBar(),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return const CustomCard();
                },
                itemCount: 10,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const _FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8, top: 8),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        // leading: const Icon(Icons.add_rounded),
        title: const Text('Note title'),
        subtitle: const Text('Note description'),
        trailing: IconButton(
          icon: const Icon(Icons.expand_more_rounded),
          onPressed: () {
            // Add your action here
          },
        ),
        onTap: () {
          // Add your action here
        },
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: FloatingActionButton(
          tooltip: 'Add Note',
          elevation: 2,
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.add_rounded, color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
