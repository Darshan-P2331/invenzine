import 'package:flutter/material.dart';
import 'package:invenzine/helper/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.black54,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black54,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
