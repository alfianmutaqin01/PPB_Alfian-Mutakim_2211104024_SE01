import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'note_controller.dart';

class MyHomePage extends StatelessWidget {
  final NoteController controller = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Obx(() => controller.notes.isEmpty
          ? Center(child: Text('No notes added.'))
          : ListView.builder(
              itemCount: controller.notes.length,
              itemBuilder: (context, index) {
                final note = controller.notes[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(note['title']!),
                    subtitle: Text(note['description']!),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => controller.deleteNoteAt(index),
                    ),
                  ),
                );
              },
            )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add_note'),
        child: Icon(Icons.add),
      ),
    );
  }
}