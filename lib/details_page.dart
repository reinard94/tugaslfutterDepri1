import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/dummy.dart';

class DetailsPage extends StatefulWidget {
  static String tag = "details";
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  static const String VIEW_MODE = "view";
  static const String EDIT_MODE = "edit";
  String _currentMode = VIEW_MODE;
  Dummy? _dummy;
  

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _dummy = ModalRoute.of(context)!.settings.arguments as Dummy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Details: ${_dummy!.id}"),
        actions: [
          IconButton(
            onPressed: (){
              //Navigator.of(context).pushNamed(EditPage.tag);
              // print("edit di pencet");
              setState(() {
                print(_currentMode);
                if (_currentMode == EDIT_MODE) {
                  _currentMode = VIEW_MODE;
                } else {
                  _currentMode = EDIT_MODE;
                }
              });
            }, 
            icon: Icon(Icons.edit),
          
          ),
          IconButton(
            onPressed: (){
              print("remove di pencet");
            }, 
            icon: Icon(Icons.delete),
          ),
        ],
      ),
      body: _generateBody(),
    );
  }

  Widget _generateBody(){
    if(_currentMode == VIEW_MODE) {
      //generate view body
      return Column(
        children: [
          Text(_dummy!.nama),
          Text(_dummy!.umur.toString()),
        ],
      );
    } else if (_currentMode == EDIT_MODE) {
      //generate edit body
      return Column(
        children: [
          TextFormField(),
          TextFormField(),
        ],
      );
    }

    return Container();
  }
}