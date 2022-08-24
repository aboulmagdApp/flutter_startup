import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('addnotes'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Form(
                child: Column(children: [
                  TextFormField(
                    maxLength: 30,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Title Note",
                        prefixIcon: Icon(Icons.note)),
                  ),
                  TextFormField(
                    minLines: 1,
                    maxLines: 3,
                    maxLength: 200,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Note",
                        prefixIcon: Icon(Icons.description)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          child: Text('Add Image',
                              style: Theme.of(context).textTheme.headline6),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          child: Text(
                            'Add Note',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
