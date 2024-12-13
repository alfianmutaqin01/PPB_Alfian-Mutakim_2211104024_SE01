import 'package:get/get.dart';

class NoteController extends GetxController {
  var notes = <Map<String, String>>[].obs;

  void addNote(Map<String, String> note) {
    notes.add(note);
  }

  void deleteNoteAt(int index) {
    notes.removeAt(index);
  }
}