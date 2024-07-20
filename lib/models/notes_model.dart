import 'package:flutter/material.dart';

class NotesModel extends ChangeNotifier {
  final List<String> _notes = [
    'Note 1: Flutter is awesome!',
    'Note 2: Learning Dart is fun! \nNote 3: Stateful widgets are powerful \nNote 4: Stateless widgets are simple. Stateless widgets are simple.',
    'Note 3: Flutter community is supportive.',
    'Note 4: Widgets are the building blocks of Flutter.',
    'Note 5: Hot reload is a game-changer.',
    'Note 6: Use packages to extend functionality.',
    'Note 7: Flutter works for both Android and iOS.',
    'Note 8: Follow best practices for performance.',
    'Note 9: Hot reload is a game-changer.',
    'Note 10: Use packages to extend functionality.',
    'Note 11: Flutter works for both Android and iOS.',
    'Note 12: Follow best practices for performance.',
    'Note 13: Learning Dart is fun! \nNote 3: Stateful widgets are powerful \nNote 4: Stateless widgets are simple. Stateless widgets are simple.',
    'Note 14: Flutter community is supportive.',
  ];
  final List<String> _drawerItems = [
    'Profile',
    'Settings',
    'Support',
    'Logout',
  ];
  get notes => _notes;
  get drawerItems => _drawerItems;

  //add notes to the list
  void addNotes(int index) {
    _notes.add(_notes[index]);
    notifyListeners();
  }

  //remove notes from the list
  void removeNotes(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }
}
