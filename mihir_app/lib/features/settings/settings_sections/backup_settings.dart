import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class BackupSettings extends StatelessWidget {
  const BackupSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Backup & Restore',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create Backup',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Export your library, reading progress, and settings to a .tachibk file',
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _createBackup(context),
                    icon: const Icon(Icons.backup),
                    label: const Text('Create Backup'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Restore Backup',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Import a .tachibk backup file from Mihon or Mihir',
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _restoreBackup(context),
                    icon: const Icon(Icons.restore),
                    label: const Text('Restore Backup'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        const Text(
          'Auto Backup',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SwitchListTile(
          title: const Text('Enable Auto Backup'),
          subtitle: const Text('Automatically create backups'),
          value: false,
          onChanged: (value) {},
        ),
        ListTile(
          title: const Text('Backup Frequency'),
          subtitle: const Text('Daily'),
          trailing: DropdownButton<String>(
            value: 'daily',
            items: const [
              DropdownMenuItem(value: 'daily', child: Text('Daily')),
              DropdownMenuItem(value: 'weekly', child: Text('Weekly')),
              DropdownMenuItem(value: 'monthly', child: Text('Monthly')),
            ],
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text('Keep Last'),
          subtitle: const Text('5 backups'),
          trailing: Slider(
            value: 5,
            min: 1,
            max: 20,
            divisions: 19,
            label: '5',
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  void _createBackup(BuildContext context) async {
    // TODO: Implement backup creation
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Backup creation coming soon')),
    );
  }

  void _restoreBackup(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['tachibk'],
    );

    if (result != null) {
      // TODO: Implement backup restoration
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Backup restoration coming soon')),
      );
    }
  }
}
