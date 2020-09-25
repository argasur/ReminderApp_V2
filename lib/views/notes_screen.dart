import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Notes',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 26),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.note_add,
                size: 35,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    clipBehavior: Clip.antiAlias,
                    useRootNavigator: true,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                            top: 32,
                            right: 32,
                            left: 32),
                        height: MediaQuery.of(context).size.height,
                        child: Form(
                            child: Column(
                          children: [
                            Text(
                              'Tambah Catatan',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              maxLength: 30,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Text'),
                            ),
                            TextFormField(
                              maxLines: 10,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Write Somethings...'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FloatingActionButton.extended(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    backgroundColor: Colors.red,
                                    icon: Icon(Icons.backspace),
                                    label: Text('Kembali')),
                                FloatingActionButton.extended(
                                    onPressed: () {},
                                    icon: Icon(Icons.add_box),
                                    label: Text('Simpan')),
                              ],
                            )
                          ],
                        )),
                      );
                    });
              })
        ],
      ),
      backgroundColor: Colors.transparent,
      body: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 5),
        childAspectRatio: 0.9,
        crossAxisCount: 2,
        children: List.generate(3, (index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.all(7),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.greenAccent[200],
                    borderRadius: BorderRadius.circular(5.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Judul",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "- data",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
