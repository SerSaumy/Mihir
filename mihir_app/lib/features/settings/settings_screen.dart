import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'settings_sections/appearance_settings.dart';
import 'settings_sections/library_settings.dart';
import 'settings_sections/reader_settings.dart';
import 'settings_sections/download_settings.dart';
import 'settings_sections/backup_settings.dart';
import 'settings_sections/advanced_settings.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  int _selectedSection = 0;

  final List<_SettingsSection> _sections = [
    _SettingsSection(
      title: 'Appearance',
      icon: Icons.palette,
      widget: const AppearanceSettings(),
    ),
    _SettingsSection(
      title: 'Library',
      icon: Icons.library_books,
      widget: const LibrarySettings(),
    ),
    _SettingsSection(
      title: 'Reader',
      icon: Icons.menu_book,
      widget: const ReaderSettings(),
    ),
    _SettingsSection(
      title: 'Downloads',
      icon: Icons.download,
      widget: const DownloadSettings(),
    ),
    _SettingsSection(
      title: 'Backup & Restore',
      icon: Icons.backup,
      widget: const BackupSettings(),
    ),
    _SettingsSection(
      title: 'Advanced',
      icon: Icons.settings,
      widget: const AdvancedSettings(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Theme.of(context).colorScheme.surface,
            child: ListView.builder(
              itemCount: _sections.length,
              itemBuilder: (context, index) {
                final section = _sections[index];
                return ListTile(
                  leading: Icon(section.icon),
                  title: Text(section.title),
                  selected: _selectedSection == index,
                  onTap: () {
                    setState(() {
                      _selectedSection = index;
                    });
                  },
                );
              },
            ),
          ),
          // Content
          Expanded(
            child: _sections[_selectedSection].widget,
          ),
        ],
      ),
    );
  }
}

class _SettingsSection {
  final String title;
  final IconData icon;
  final Widget widget;

  _SettingsSection({
    required this.title,
    required this.icon,
    required this.widget,
  });
}
