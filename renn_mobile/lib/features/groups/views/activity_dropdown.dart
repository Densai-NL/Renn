import 'package:flutter/material.dart';

class ActivityDropdown extends StatefulWidget {
  final List<(String, IconData?)> options;
  final String hint;
  const ActivityDropdown({
    super.key,
    required this.options,
    required this.hint,
  });

  @override
  State<ActivityDropdown> createState() => _ActivityDropdownState();
}

class _ActivityDropdownState extends State<ActivityDropdown> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(63, 236, 141, 1),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 40,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(widget.hint),
          value: dropdownValue,
          underline: null,
          items: widget.options.map(((String name, IconData? icon) tuple) {
            return DropdownMenuItem(
              value: tuple.$1,
              child: Row(
                children: [
                  tuple.$2 != null ? Icon(tuple.$2) : Container(),
                  tuple.$2 != null ? SizedBox(width: 8.0) : Container(),
                  Text(tuple.$1),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
