import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kNoteColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26 * 2,
      child: ListView.builder(
        itemCount: kNoteColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: InkWell(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kNoteColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isSelected: currentIndex == index,
                  color: kNoteColors[index],
                ),
              ),
            ),
      ),
    );
  }
}
