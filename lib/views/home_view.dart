import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      margin: EdgeInsets.only(bottom: 4.h, top: 4.h),
      elevation: 5,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        tileColor: Theme.of(context).colorScheme.primaryContainer,
        // leading: const Icon(Icons.add_rounded),
        title: Text(
          'Note title',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color:
                Theme.of(context).colorScheme.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
          ),
        ),
        subtitle: Text(
          'Note description',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color:
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? Colors.grey[700]
                    : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
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
        padding: EdgeInsets.only(bottom: 16.h),
        child: FloatingActionButton(
          tooltip: 'Add Note',
          elevation: 2,
          backgroundColor:
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondaryFixed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            Icons.add_rounded,
            color:
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? Colors.white
                    : Theme.of(context).colorScheme.onSecondaryFixed,
            size: 28.sp,
          ),
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
            Text(
              'Notes',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            CustomSearchIcon(),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      ],
    );
  }
}

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: IconButton(
        icon: const Icon(Icons.search_rounded),
        onPressed: () {
          // Add your action here
        },
      ),
    );
  }
}
