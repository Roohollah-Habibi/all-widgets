import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _State();
}

class _State extends State<MyForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
   TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Form(
        key: _globalKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return 'Something is wrong';
                }
                return null;
              },
              key: UniqueKey(),
              controller: _controller,
              style: TextStyle(
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              decoration: customInputDecoration('input name here'),
            ),
            TextFormField(
              // controller: _controller,
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Something is wrong';
                }
                return null;
              },
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Colors.indigo.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              decoration: customInputDecoration('input age here'),
            ),
            HelperElevatedButton(onPress: () {
              setState(() {
                if(_globalKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Congretulation')));
                }
              });
            }, buttonName: 'Submit'),
          ],
        ),
      ),
    );
  }

  InputDecoration customInputDecoration(String label) => InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
        icon: const Icon(Icons.drive_file_rename_outline),
        contentPadding: const EdgeInsets.only(left: 25),
        counter: Text('${_controller.value.text.length}'),
        filled: true,
        fillColor: Colors.lightGreen,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
}
