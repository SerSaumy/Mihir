import 'package:flutter/material.dart';

class ExtensionInstallDialog extends StatefulWidget {
  final Map<String, dynamic> extension;

  const ExtensionInstallDialog({super.key, required this.extension});

  @override
  State<ExtensionInstallDialog> createState() => _ExtensionInstallDialogState();
}

class _ExtensionInstallDialogState extends State<ExtensionInstallDialog> {
  bool _isInstalling = false;
  String _status = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Install ${widget.extension['name'] ?? 'Extension'}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isInstalling) ...[
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(_status),
          ] else ...[
          Text('Language: ${widget.extension['lang'] ?? 'Unknown'}'),
          Text('Sources: ${widget.extension['sources'] ?? 0}'),
          if (widget.extension['isNsfw'] == true)
            const Chip(label: Text('NSFW')),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: _isInstalling ? null : () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _isInstalling ? null : _installExtension,
          child: const Text('Install'),
        ),
      ],
    );
  }

  void _installExtension() async {
    setState(() {
      _isInstalling = true;
      _status = 'Downloading...';
    });

    // TODO: Implement extension installation
    // 1. Download APK
    // 2. Extract APK
    // 3. Convert DEX → JAR
    // 4. Decompile JAR → Java
    // 5. Transpile Java → JavaScript
    // 6. Cache bundle
    // 7. Load extension

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _status = 'Extracting...';
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _status = 'Transpiling...';
    });

    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Extension installed successfully')),
      );
    }
  }
}
