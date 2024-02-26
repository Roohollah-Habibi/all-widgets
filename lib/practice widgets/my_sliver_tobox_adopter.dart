import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MySliverToBoxAdopter extends StatelessWidget {
  const MySliverToBoxAdopter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 100,
            margin: EdgeInsets.all(20),
            color: Colors.orange,
            child: HelperText(text: 'Sliver to box adobter'),
          ),
        )
      ],
    );
  }
}
