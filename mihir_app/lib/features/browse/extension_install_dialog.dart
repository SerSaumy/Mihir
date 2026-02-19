import 'package:flutter/material.dart';
import '../../core/extensions/models/extension_repo_item.dart';

class ExtensionInstallDialog extends StatefulWidget {
  final ExtensionRepoItem extension;

  const ExtensionInstallDialog({super.key, required this.extension});

  @override
  State<ExtensionInstallDialog> createState() => _ExtensionInstallDialogState();
}

class _ExtensionInstallDialogState extends State<ExtensionInstallDialog> {
  bool _isInstalling = false;
  String _status = '';

  @override
  Widget build(BuildContext context) {
    final ext = widget.extension;
    return AlertDialog(
      title: Text('Install ${ext.name}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isInstalling) ...[
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(_status),
          ] else ...[
          Text('Language: ${ext.lang}'),
          Text('${ext.sources.length} source(s)'),
          if (ext.isNsfw) const Chip(label: Text('NSFW')),
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
