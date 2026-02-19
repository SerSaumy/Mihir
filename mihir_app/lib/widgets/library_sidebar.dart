import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LibrarySidebar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>? onItemSelected;

  const LibrarySidebar({
    super.key,
    this.selectedIndex = 0,
    this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Theme.of(context).colorScheme.surface,
      child: ListView(
        children: [
          _buildNavItem(
            context,
            icon: Icons.library_books,
            label: 'Library',
            index: 0,
            route: '/library',
          ),
          _buildNavItem(
            context,
            icon: Icons.update,
            label: 'Updates',
            index: 1,
            route: '/updates',
          ),
          _buildNavItem(
            context,
            icon: Icons.history,
            label: 'History',
            index: 2,
            route: '/history',
          ),
          _buildNavItem(
            context,
            icon: Icons.explore,
            label: 'Browse',
            index: 3,
            route: '/browse',
          ),
          _buildNavItem(
            context,
            icon: Icons.download,
            label: 'Downloads',
            index: 4,
            route: '/downloads',
          ),
          const Divider(),
          _buildNavItem(
            context,
            icon: Icons.settings,
            label: 'Settings',
            index: 5,
            route: '/settings',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required int index,
    required String route,
  }) {
    final isSelected = selectedIndex == index;
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      selected: isSelected,
      onTap: () {
        if (onItemSelected != null) {
          onItemSelected!(index);
        }
        context.go(route);
      },
    );
  }
}
