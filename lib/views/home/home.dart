import 'dart:io';

import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/notes/notes_model.dart';
import 'package:dsw_51781/views/widgets/basic_log_in_site.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../../utils/database_help.dart';
import 'add_edit_screen.dart';
import 'note_view.dart';


class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();}
class _HomeState extends State<Home>{
  final DatabaseHelp _databaseHelp = DatabaseHelp();
  List<Note> _notes = [];
  final List<Color> _noteColors = [
    Colors.amber,
    Color(0xFF50C878),
    Colors.redAccent,
    Colors.blueAccent,
    Colors.indigo,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.black,
  ];
  @override
  void initState(){
    super.initState();
    _loadNotes();
    if (kIsWeb){
      print('Web');
    } else if (Platform.isAndroid){
      print('Android');
    } else {
      print('Another');
    }
  }
Future<void> _loadNotes() async{
    final notes = await _databaseHelp.getNotes();
    setState(() {
      _notes = notes;
    });
}
  String _formatDateTime(String dateTime){
    final DateTime dt = DateTime.parse(dateTime);
    final now = DateTime.now();

    if(dt.year == now.year && dt.month == now.month && dt.day == now.day){
      return 'Today, ${dt.hour.toString().padLeft(2,'0')}:${dt.minute.toString().padLeft(0,'0')}';
    }
    return '${dt.day}/${dt.month}/${dt.year}, ${dt.hour.toString().padLeft(2,'0')}:${dt.minute.toString().padLeft(0,'0')}';
  }

  @override
  Widget build(BuildContext context){
    //return kIsWeb ? Placeholder() : Placeholder(color: MyColors.violetColor,);
    //final width = Extensions.width(context);
    return Scaffold(
    backgroundColor: MyColors.lavenderColor,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: MyColors.lavenderColor,
      title: Text("My Notes",
      style: TextStyle(
        color: Colors.black,
      ),),
    ),
    body: GridView.builder(
      padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,),
        itemCount: _notes.length,
        itemBuilder: (context,index){
        final note = _notes[index];
        final color = Color(int.parse(note.color));
        return GestureDetector(
          onTap: ()async{
            await Navigator.push(context, MaterialPageRoute(builder: (context) => ViewNoteScreen(note: note),));
            _loadNotes();
          },
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
              boxShadow:[
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ],
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(note.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8,),
                Text(note.content,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Text(_formatDateTime(note.dateTime),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
          ),
        );
        },
    ),
    floatingActionButton: FloatingActionButton(onPressed: ()async{
      await Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => AddEditNoteScreen(),));
      _loadNotes();
    },
      child: Icon(Icons.add),
      backgroundColor: MyColors.violetColor,
      foregroundColor: Colors.white,
    ),
        );
  }
}