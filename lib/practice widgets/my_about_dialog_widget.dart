import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){
            showMeDialog(context);
          },
          child: Text('Show Dialog'),),
    );
  }
  void showMeDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.indigo,
      context: context, builder: (context) => AboutDialog(
      applicationVersion: '1.2.3',
      applicationName: 'UI/Ux Design',
      applicationLegalese: 'Application Legalease',
      applicationIcon: Icon(Icons.info,color: Colors.green,size: 50,),
    ),);
  }
}
// () {
// showDialog(
//   anchorPoint: Offset(200, -200),
//   barrierColor: Colors.red,
//   barrierDismissible: false,
//   barrierLabel: 'This is a barrier label',
//   useSafeArea: false,
//   context: context,
//   builder: (context) => AboutDialog(
//     applicationVersion: '1.2.3',
//     applicationName: 'UI/Ux Design',
//     applicationLegalese: 'Application Legalease',
//     applicationIcon: Icon(Icons.info,color: Colors.green,size: 50,),
//   ),
// );
// },