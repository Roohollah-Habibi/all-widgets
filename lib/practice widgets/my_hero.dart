import 'package:app/practice%20widgets/my_form.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyHero extends StatefulWidget {
  const MyHero({super.key});

  @override
  State<MyHero> createState() => _MyHeroState();
}

class _MyHeroState extends State<MyHero> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Hero(
        tag: 'tag-1',
        transitionOnUserGestures: true,
        child: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          icon: const Icon(
            Icons.person,
            size: 40,
          ),
        ),
      ),
      title: const HelperText(text: 'Hero Widget'),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.orange,
          alignment: Alignment.center,
          child: Hero(
            tag: 'tag-1',
            child: IconButton(
              icon: Icon(
                Icons.exit_to_app_outlined,
                size: 50,
                color: Colors.indigo.shade900,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
