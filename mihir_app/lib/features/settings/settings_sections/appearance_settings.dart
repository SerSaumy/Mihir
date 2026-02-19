import 'package:flutter/material.dart';

class AppearanceSettings extends StatelessWidget {
  const AppearanceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Theme',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        RadioListTile<String>(
          title: const Text('Light'),
          value: 'light',
          groupValue: 'light',
          onChanged: (value) {},
        ),
        RadioListTile<String>(
          title: const Text('Dark'),
          value: 'dark',
          groupValue: 'light',
          onChanged: (value) {},
        ),
        RadioListTile<String>(
          title: const Text('System'),
          value: 'system',
          groupValue: 'light',
          onChanged: (value) {},
        ),
        const Divider(),
        const Text(
          'Accent Color',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        // TODO: Color picker
        const Text('Color picker coming soon'),
        const Divider(),
        const Text(
          'Sidebar',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Sidebar Position'),
          subtitle: const Text('Left'),
          trailing: DropdownButton<String>(
            value: 'left',
            items: const [
              DropdownMenuItem(value: 'left', child: Text('Left')),
              DropdownMenuItem(value: 'right', child: Text('Right')),
            ],
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Sidebar Width'),
          subtitle: const Text('200px'),
          trailing: Slider(
            value: 200,
            min: 150,
            max: 300,
            divisions: 15,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
