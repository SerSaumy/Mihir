import 'package:flutter/material.dart';
import '../../../widgets/app_logo.dart';

class AdvancedSettings extends StatelessWidget {
  const AdvancedSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Advanced',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Clear Cache'),
          subtitle: const Text('Current cache size: 0 MB'),
          trailing: ElevatedButton(
            onPressed: () {
              // TODO: Clear cache
            },
            child: const Text('Clear'),
          ),
        ),
        ListTile(
          title: const Text('Clear Database'),
          subtitle: const Text('Warning: This will delete all data'),
          trailing: ElevatedButton(
            onPressed: () {
              _showClearDatabaseDialog(context);
            },
            child: const Text('Clear'),
          ),
        ),
        const Divider(),
        const Text(
          'Extension Bridge',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Node.js Path'),
          subtitle: const Text('Auto-detected'),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO: Edit Node.js path
            },
          ),
        ),
        ListTile(
          title: const Text('Bridge Timeout'),
          subtitle: const Text('30 seconds'),
          trailing: Slider(
            value: 30,
            min: 10,
            max: 120,
            divisions: 22,
            label: '30s',
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Max Concurrent Extensions'),
          subtitle: const Text('5'),
          trailing: Slider(
            value: 5,
            min: 1,
            max: 10,
            divisions: 9,
            label: '5',
            onChanged: (value) {},
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Debug Logging'),
          subtitle: const Text('Enable detailed logging'),
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('About'),
          subtitle: const Text('Mihir v1.0.0'),
          trailing: IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              _showAboutDialog(context);
            },
          ),
        ),
      ],
    );
  }

  void _showClearDatabaseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear Database'),
        content: const Text(
          'This will delete all manga, chapters, and settings. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Clear database
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Database cleared')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const AppLogo(size: 48),
            const SizedBox(width: 12),
            const Text('Mihir'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Version 1.0.0',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('A native Windows manga reader'),
            const SizedBox(height: 8),
            const Text('Based on Mihon'),
            const SizedBox(height: 4),
            const Text(
              'https://mihon.app',
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(height: 16),
            const Text(
              'Licensed under Apache 2.0',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
