import 'package:flutter/material.dart';

class LibraryFilterPanel extends StatelessWidget {
  final VoidCallback onClose;

  const LibraryFilterPanel({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          left: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                const Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onClose,
                ),
              ],
            ),
          ),
          // Filter content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Read status filter
                _buildSection(
                  context,
                  title: 'Read Status',
                  children: [
                    CheckboxListTile(
                      title: const Text('Unread'),
                      value: false,
                      onChanged: (value) {},
                    ),
                    CheckboxListTile(
                      title: const Text('Read'),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const Divider(),
                // Download status filter
                _buildSection(
                  context,
                  title: 'Download Status',
                  children: [
                    CheckboxListTile(
                      title: const Text('Downloaded'),
                      value: false,
                      onChanged: (value) {},
                    ),
                    CheckboxListTile(
                      title: const Text('Not Downloaded'),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const Divider(),
                // Sort options
                _buildSection(
                  context,
                  title: 'Sort By',
                  children: [
                    RadioListTile<String>(
                      title: const Text('Title'),
                      value: 'title',
                      groupValue: 'title',
                      onChanged: (value) {},
                    ),
                    RadioListTile<String>(
                      title: const Text('Last Read'),
                      value: 'lastRead',
                      groupValue: 'title',
                      onChanged: (value) {},
                    ),
                    RadioListTile<String>(
                      title: const Text('Last Updated'),
                      value: 'lastUpdated',
                      groupValue: 'title',
                      onChanged: (value) {},
                    ),
                    RadioListTile<String>(
                      title: const Text('Unread Count'),
                      value: 'unread',
                      groupValue: 'title',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Apply button
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                ),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Apply filters
                  onClose();
                },
                child: const Text('Apply Filters'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }
}
