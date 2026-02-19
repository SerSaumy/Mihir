import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SourceBrowseScreen extends ConsumerWidget {
  final String sourceId;

  const SourceBrowseScreen({super.key, required this.sourceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Source: $sourceId'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Popular'),
              Tab(text: 'Latest'),
              Tab(text: 'Filters'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _PopularTab(),
            _LatestTab(),
            _FiltersTab(),
          ],
        ),
      ),
    );
  }
}

class _PopularTab extends StatelessWidget {
  const _PopularTab();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Popular - Coming Soon'));
  }
}

class _LatestTab extends StatelessWidget {
  const _LatestTab();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Latest - Coming Soon'));
  }
}

class _FiltersTab extends StatelessWidget {
  const _FiltersTab();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Filters - Coming Soon'));
  }
}
