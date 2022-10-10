import 'package:flutter/material.dart';

class AppRoundedButton extends StatefulWidget {
  final Function() onPress;
  final String buttonText;
  const AppRoundedButton({
    Key? key,
    required this.onPress,
    required this.buttonText,
  }) : super(key: key);

  @override
  State<AppRoundedButton> createState() => _AppRoundedButtonState();
}

class _AppRoundedButtonState extends State<AppRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Text(
          widget.buttonText,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
