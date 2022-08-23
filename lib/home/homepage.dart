import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "we have note 1", "imahe": "fb.png"},
    {"note": "we have note 2", "imahe": "fb.png"},
    {"note": "we have note 3", "imahe": "fb.png"},
    {"note": "we have note 4", "imahe": "fb.png"}
  ];
  @override
  Widget build(BuildContext context) {
    // double wdw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key("$i"),
                    child: ListNotes(
                      notes: notes[i],
                    ));
              })),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;

  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/fb.png",
                fit: BoxFit.cover,
              )),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text("${notes['note']}"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
