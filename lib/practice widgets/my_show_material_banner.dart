import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyShowMaterialBanner extends StatefulWidget {
  const MyShowMaterialBanner({super.key});

  @override
  State<MyShowMaterialBanner> createState() => _MyShowMaterialBannerState();
}

class _MyShowMaterialBannerState extends State<MyShowMaterialBanner> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: HelperElevatedButton(
        onPress: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
                leading: const Icon(
                  Icons.notifications_active_outlined, size: 35,),
                elevation: 10,
                backgroundColor: Colors.blue.shade300,
                padding: const EdgeInsets.all(10),
                content: const Text('Show Banner'),
                actions: [
                  HelperElevatedButton(onPress: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner(reason: MaterialBannerClosedReason.swipe);
                  }, buttonName: 'Dismiss', height: 30, width: 100,),
                ]),
          );
        },
        buttonName: 'Show Banner',
      ),
    );
  }
}
