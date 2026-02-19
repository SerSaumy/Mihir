import 'package:flutter/material.dart';

class LibrarySettings extends StatelessWidget {
  const LibrarySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Library',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Default Sort'),
          subtitle: const Text('Last Read'),
          trailing: DropdownButton<String>(
            value: 'lastRead',
            items: const [
              DropdownMenuItem(value: 'title', child: Text('Title')),
              DropdownMenuItem(value: 'lastRead', child: Text('Last Read')),
              DropdownMenuItem(value: 'lastUpdated', child: Text('Last Updated')),
              DropdownMenuItem(value: 'unread', child: Text('Unread Count')),
            ],
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Update Frequency'),
          subtitle: const Text('Every 24 hours'),
          trailing: DropdownButton<String>(
            value: '24',
            items: const [
              DropdownMenuItem(value: 'manual', child: Text('Manual')),
              DropdownMenuItem(value: '6', child: Text('Every 6 hours')),
              DropdownMenuItem(value: '12', child: Text('Every 12 hours')),
              DropdownMenuItem(value: '24', child: Text('Every 24 hours')),
              DropdownMenuItem(value: '48', child: Text('Every 48 hours')),
            ],
            onChanged: (value) {},
          ),
        ),
        SwitchListTile(
          title: const Text('Auto-download New Chapters'),
          subtitle: const Text('Automatically download new chapters when found'),
          value: false,
          onChanged: (value) {},
        ),
        const Divider(),
        const Text(
          'Display',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Grid Column Count'),
          subtitle: const Text('Auto'),
          trailing: DropdownButton<String>(
            value: 'auto',
            items: const [
              DropdownMenuItem(value: 'auto', child: Text('Auto')),
              DropdownMenuItem(value: '2', child: Text('2')),
              DropdownMenuItem(value: '3', child: Text('3')),
              DropdownMenuItem(value: '4', child: Text('4')),
              DropdownMenuItem(value: '5', child: Text('5')),
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
