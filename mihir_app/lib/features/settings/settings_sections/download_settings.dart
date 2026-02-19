import 'package:flutter/material.dart';

class DownloadSettings extends StatelessWidget {
  const DownloadSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Downloads',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ListTile(
          title: const Text('Download Location'),
          subtitle: const Text('Documents\\Mihir\\Downloads'),
          trailing: IconButton(
            icon: const Icon(Icons.folder),
            onPressed: () {
              // TODO: Open folder picker
            },
          ),
        ),
        ListTile(
          title: const Text('Concurrent Downloads'),
          subtitle: const Text('3 downloads at once'),
          trailing: Slider(
            value: 3,
            min: 1,
            max: 5,
            divisions: 4,
            label: '3',
            onChanged: (value) {},
          ),
        ),
        SwitchListTile(
          title: const Text('Package as CBZ'),
          subtitle: const Text('Package chapters as CBZ files instead of folders'),
          value: false,
          onChanged: (value) {},
        ),
        SwitchListTile(
          title: const Text('Auto-delete After Reading'),
          subtitle: const Text('Delete downloaded chapters after reading'),
          value: false,
          onChanged: (value) {},
        ),
        SwitchListTile(
          title: const Text('Retry Failed Downloads'),
          value: true,
          onChanged: (value) {},
        ),
        SwitchListTile(
          title: const Text('Notification on Complete'),
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
