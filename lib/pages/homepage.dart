import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tasko/common/widgets/notedisplay.dart';
import 'package:tasko/models/notes_model.dart';
import 'package:tasko/pages/addnotes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Consumer<NotesModel>(builder: (context, value, child) {
              return ListView.builder(
                  itemCount: value.drawerItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text(
                          value.drawerItems[index],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                    //NoteDisplay(note: value.notes[index]);
                  });
            })),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Tasko',
          style: TextStyle(fontSize: width * 0.07),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddNotes()));
              },
              icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _searchField(width),
            Expanded(
                child: Consumer<NotesModel>(builder: (context, value, child) {
              return ListView.builder(
                  itemCount: value.notes.length,
                  itemBuilder: (context, index) {
                    return NoteDisplay(note: value.notes[index]);
                  });
            })),
          ],
        ),
      ),
    );
  }

  TextField _searchField(double width) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search here',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(width * 0.025)),
              borderSide: BorderSide.none)),
    );
  }
}
