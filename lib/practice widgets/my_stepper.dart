import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stepper(
          onStepTapped: (value) =>
              setState(() {
                _activeStep = value;
              }),
          currentStep: _activeStep,

          onStepContinue: () =>
              setState(() {
                if (_activeStep != 2) {
                  _activeStep++;
                }
              }),
          onStepCancel: () => setState(() {
            if(_activeStep > 0){
              _activeStep--;
            }
          }),
          type: StepperType.horizontal,
          steps: [
            Step(
              isActive: _activeStep == 0,
              title: const Text('Step One'),
              content: const Text(
                'This is the content of the step one',
                style: TextStyle(color: Colors.indigoAccent),
              ),
            ),
            Step(
              isActive: _activeStep == 1,
              title: const Text('Step Two'),
              content: const Text(
                'This is the content of the step Two',
                style: TextStyle(color: Colors.indigoAccent),
              ),
            ),
            Step(
              isActive: _activeStep == 2,
              title: const Text('Step Three'),
              content: const Text(
                'This is the content of the step Three',
                style: TextStyle(color: Colors.indigoAccent),
              ),
            ),
          ]),
    );
  }
}
