import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final double? width;
  final TextInputType? keyboardType;
  const CustomTextFieldWidget(
      {super.key, required this.hintText, this.keyboardType, this.width});

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Background Image
        Image.asset(
          "assets/images/cashier/withdraw/withdraw amount-password.png",
          width: MediaQuery.sizeOf(context).width / 2.7,
          fit: BoxFit.cover,
        ),

        // TextField without border
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 15), // Adjust as needed
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width /
                3.5, // To fit inside the image
            child: TextField(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Colors.white),
              ),
              keyboardType: widget.keyboardType ?? TextInputType.number,
            ),
          ),
        ),
      ],
    );
  }
}
