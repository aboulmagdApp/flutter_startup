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
                          onPressed: () {
                            showBottomSheet();
                          },
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

  showBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            height: 170,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'please choose Image',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'gallary',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.camera, size: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text('camera'),
                    ],
                  ),
                ),
              ),
            ]),
          );
        });
  }
}
