import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/extensions/models/extension.dart';
import '../../core/extensions/models/extension_repo_item.dart';
import '../../core/providers/extension_repository_provider.dart';
import 'extension_install_dialog.dart';

final extensionsProvider = FutureProvider<List<MihirExtension>>((ref) async {
  return [];
});

class ExtensionsTab extends ConsumerWidget {
  const ExtensionsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final installedAsync = ref.watch(extensionsProvider);
    final availableAsync = ref.watch(availableExtensionsProvider);

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Installed'),
              Tab(text: 'Browse'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildInstalledTab(context, ref, installedAsync),
                _buildBrowseTab(context, ref, availableAsync),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstalledTab(
    BuildContext context,
    WidgetRef ref,
    AsyncValue<List<MihirExtension>> installedAsync,
  ) {
    return installedAsync.when(
      data: (extensions) {
        if (extensions.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.extension, size: 64, color: Colors.grey),
                const SizedBox(height: 16),
                const Text('No extensions installed'),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    // Switch to browse tab
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Install Extension'),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: extensions.length,
          itemBuilder: (context, index) {
            final extension = extensions[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: extension.iconPath != null
                    ? Image.asset(extension.iconPath!)
                    : const Icon(Icons.extension),
                title: Text(extension.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Version: ${extension.versionName}'),
                    Text('Language: ${extension.lang}'),
                    Text('Sources: ${extension.sources.length}'),
                    if (extension.isNsfw)
                      const Chip(
                        label: Text('NSFW'),
                        labelStyle: TextStyle(fontSize: 10),
                      ),
                  ],
                ),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'update',
                      child: Text('Update'),
                    ),
                    const PopupMenuItem(
                      value: 'uninstall',
                      child: Text('Uninstall'),
                    ),
                  ],
                  onSelected: (value) {
                    if (value == 'uninstall') {
                      _showUninstallDialog(context, extension);
                    }
                  },
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildBrowseTab(
    BuildContext context,
    WidgetRef ref,
    AsyncValue<List<ExtensionRepoItem>> availableAsync,
  ) {
    return availableAsync.when(
      data: (extensions) {
        if (extensions.isEmpty) {
          return const Center(
            child: Text('No extensions available\nCheck your internet connection'),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: extensions.length,
          itemBuilder: (context, index) {
            final ext = extensions[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: const Icon(Icons.extension),
                title: Text(ext.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Language: ${ext.lang} • Version: ${ext.version}'),
                    Text('${ext.sources.length} source(s)'),
                    if (ext.isNsfw)
                      const Chip(
                        label: Text('NSFW'),
                        labelStyle: TextStyle(fontSize: 10),
                      ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => ExtensionInstallDialog(
                        extension: ext,
                      ),
                    );
                  },
                  child: const Text('Install'),
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Failed to load extensions: $error'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.invalidate(availableExtensionsProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  void _showUninstallDialog(BuildContext context, MihirExtension extension) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Uninstall Extension'),
        content: Text('Are you sure you want to uninstall ${extension.name}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // TODO: Uninstall extension
              Navigator.pop(context);
            },
            child: const Text('Uninstall'),
          ),
        ],
      ),
    );
  }
}
