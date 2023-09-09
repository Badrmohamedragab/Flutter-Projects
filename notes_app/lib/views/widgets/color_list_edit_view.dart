import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class ColorListEditView extends StatefulWidget {
  ColorListEditView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<ColorListEditView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListEditView> {
  @override
  late int currentIndex;
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.noteModel.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.noteModel.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
