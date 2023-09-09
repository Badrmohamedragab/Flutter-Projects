import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_edit_view.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CustomAppBar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subTitle ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                text: 'Edit Notes',
                iconData: Icons.check,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  label: widget.note.title),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                onChanged: (value) {
                  subTitle = value;
                },
                label: widget.note.subTitle,
                maxLines: 5,
              ),
              SizedBox(
                height: 30,
              ),
              ColorListEditView(
                noteModel: widget.note,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
