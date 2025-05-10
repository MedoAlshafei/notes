import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
      floatingActionButton: const _FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: CustomCard(
            cardColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        );
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.cardColor});

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.h, top: 8.h, left: 8.w, right: 8.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withAlpha(100),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(16.r),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 4.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            tileColor: Theme.of(context).colorScheme.primaryContainer,
            // leading: const Icon(Icons.add_rounded),
            title: Text(
              'Note title',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            subtitle: Text(
              'Note description goes here. This is a sample note description.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? const Color.fromARGB(151, 97, 97, 97)
                        : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_rounded,
                color: Colors.black,
                size: 28.sp,
              ),
              onPressed: () {
                // Add your action here
              },
            ),
            onTap: () {
              // Add your action here
            },
          ),
          Text(
            'May 12, 2023',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? const Color.fromARGB(151, 97, 97, 97)
                      : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
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
        // SizedBox(height: MediaQuery.of(context).padding.top),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notes',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
                color:
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onSurface,
              ),
            ),
            CustomSearchIcon(),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom),
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
