import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyChip extends StatefulWidget {
  const MyChip({super.key});

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> with TickerProviderStateMixin {
  bool _onSelect = true;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 500,
    ),
  )..forward();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        label: const Text('Chip Widget'),
        backgroundColor: Colors.white,
        elevation: 5,
        deleteIcon:
            AnimatedIcon(icon: AnimatedIcons.event_add, progress: _controller,color: Colors.purple,),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.add),
        //   alignment: Alignment.center,
        //   iconSize: 20,
        //   style: IconButton.styleFrom(
        //     backgroundColor: Colors.red,
        //     foregroundColor: Colors.white,
        //     padding: EdgeInsets.all(0),
        //   ),
        // ),
        onDeleted: () {
          setState(() {
            if(_onSelect){
              _controller.reverse();
              _onSelect = false;
            }else{
              _controller.forward();
              _onSelect = true;
            }
          });
        },
        shadowColor: Colors.red,
        deleteButtonTooltipMessage: 'Tool tip Message',
        avatar: const Icon(Icons.person),
      ),
    );
  }
}
