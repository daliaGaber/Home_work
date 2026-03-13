/**
 1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.
 */

void main() {
  NotesApp myApp = NotesApp();
  myApp.addNote('Study', 'Complete Dart OOP lesson', '2024-05-20');
  myApp.addNote('Gym', 'Leg day workout', '2024-05-21');
  myApp.listAllNotes();
  myApp.searchByTitle('Study');
}

class Note {
  String title;
  String content;
  String date;
  Note(this.title, this.content, this.date);
}

class NotesApp {

  List<Note> allNotes = [];
  
  void addNote(String title, String content, String date) {
    allNotes.add(Note(title, content, date));
  }

  void listAllNotes() {
    print('All Your Notes');
    for (var note in allNotes) {
      print('Title: ${note.title} | Date: ${note.date}');
    }
  }

  void searchByTitle(String searchTitle) {
    print('Searching for: $searchTitle');
    var found = allNotes.where((note) => note.title.toLowerCase().contains(searchTitle.toLowerCase()));
    if (found.isEmpty) {
      print('No notes found with that title');
    } else {
      for (var note in found) {
        print('Title: ${note.title}, Content: ${note.content}');
      }
    }
  }
}

