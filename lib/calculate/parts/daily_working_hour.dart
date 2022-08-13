import 'package:flutter/material.dart';

class DailyWorkingHours extends StatefulWidget {
  const DailyWorkingHours({Key? key}) : super(key: key);

  @override
  State<DailyWorkingHours> createState() => _DailyWorkingHoursState();
}

class _DailyWorkingHoursState extends State<DailyWorkingHours> {
  final List<String> items = <String>[
    'Month/225 hours',
    'Day/7.5 hours',
    'Day/8 hours',
    'Day/9 hours',
    'Day/10 hours',
    'Day/12 hours',
  ];
  String selectedItem = 'Month/225 hours';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButton<String>(
        value: selectedItem,
        onChanged: (String? string) => setState(() => selectedItem = string!),
        selectedItemBuilder: (BuildContext context) {
          return items.map<Widget>((String item) {
            return Text(item);
          }).toList();
        },
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text('$item'),
          );
        }).toList(),
      ),
    );
  }
}
