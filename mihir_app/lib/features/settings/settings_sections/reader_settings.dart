import 'package:flutter/material.dart';

class ReaderSettings extends StatelessWidget {
  const ReaderSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Reading',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Default Reading Direction'),
          subtitle: const Text('Right-to-Left'),
          trailing: DropdownButton<String>(
            value: 'rtl',
            items: const [
              DropdownMenuItem(value: 'rtl', child: Text('Right-to-Left')),
              DropdownMenuItem(value: 'ltr', child: Text('Left-to-Right')),
              DropdownMenuItem(value: 'vertical', child: Text('Vertical')),
            ],
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Default Scale Mode'),
          subtitle: const Text('Fit Width'),
          trailing: DropdownButton<String>(
            value: 'fitWidth',
            items: const [
              DropdownMenuItem(value: 'fitWidth', child: Text('Fit Width')),
              DropdownMenuItem(value: 'fitHeight', child: Text('Fit Height')),
              DropdownMenuItem(value: 'fitWindow', child: Text('Fit Window')),
              DropdownMenuItem(value: 'original', child: Text('Original Size')),
            ],
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Background Color'),
          subtitle: const Text('Black'),
          trailing: DropdownButton<String>(
            value: 'black',
            items: const [
              DropdownMenuItem(value: 'black', child: Text('Black')),
              DropdownMenuItem(value: 'white', child: Text('White')),
              DropdownMenuItem(value: 'gray', child: Text('Gray')),
            ],
            onChanged: (value) {},
          ),
        ),
        SwitchListTile(
          title: const Text('Show Page Number'),
          value: true,
          onChanged: (value) {},
        ),
        SwitchListTile(
          title: const Text('Show Reading Progress Bar'),
          value: true,
          onChanged: (value) {},
        ),
        const Divider(),
        const Text(
          'Long Strip',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Preload Pages'),
          subtitle: const Text('3 pages ahead'),
          trailing: Slider(
            value: 3,
            min: 1,
            max: 10,
            divisions: 9,
            label: '3',
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Page Spacing'),
          subtitle: const Text('8px'),
          trailing: Slider(
            value: 8,
            min: 0,
            max: 32,
            divisions: 32,
            label: '8px',
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
