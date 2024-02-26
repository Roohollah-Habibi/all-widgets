import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({super.key});

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  Future<String> getData() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // throw 'Error';
    return 'Hello Future Builder';
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } if (snapshot.hasError) {
          return HelperText(text: snapshot.error.toString());
        }else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelperText(text: snapshot.data.toString()),
              HelperElevatedButton(
                onPress: () {
                  setState(() {});
                },
                buttonName: 'Refresh',
                height: 50,
                width: 100,
              ),
            ],
          );
        }
      },
    ));
  }
}
