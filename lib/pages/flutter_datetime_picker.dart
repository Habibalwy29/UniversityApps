import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart' show DatePicker, LocaleType;

class DateTimePicker extends StatefulWidget {
  final String label;
  final ValueChanged<DateTime> onDateTimeChanged;

  DateTimePicker({required this.label, required this.onDateTimeChanged});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? _selectedDateTime;

  void _pickDateTime() {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          _selectedDateTime = date;
        });
        widget.onDateTimeChanged(date);
      },
      currentTime: DateTime.now(),
      locale: LocaleType.en,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickDateTime,
      child: AbsorbPointer(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: _selectedDateTime != null
                ? _selectedDateTime.toString()
                : 'Select Date & Time',
          ),
          validator: (value) {
            if (_selectedDateTime == null) {
              return 'Please select a date and time';
            }
            return null;
          },
        ),
      ),
    );
  }
}// TODO Implement this library.