import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        aboutBoxChildren: [
          Text('Hello'),
          Text('Hello'),
          Text('Hello'),
          Text('Hello'),
        ],
        applicationIcon: Icon(
          Icons.info_outline,
          size: 50,
          color: Colors.green,
        ),
        applicationLegalese: 'Application legalease',
        applicationName: 'New Application',
        applicationVersion: '1.2.3',
        child: Text('Show me about this App',style: TextStyle(fontSize: 27,color: Colors.yellow,fontWeight: FontWeight.bold),),
        icon: Icon(Icons.add_a_photo,color: Colors.indigo,size: 50,),
      ),
    );
  }
}
