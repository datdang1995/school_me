import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide TimeOfDay;
import 'package:school_me/infrastructure/core/constants/lorem.dart';
import 'package:school_me/infrastructure/core/extensions/context_extension.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 100,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                context.translate?.school_ftu ?? '',
                style: context.textTheme.titleMedium,
              ),
              subtitle: Text('FTU', style: context.textTheme.bodySmall),
              children: [
                ListTile(
                  title: Text(context.translate?.school_introduction ?? ''),
                  subtitle: const Text(AppConstants.lorem),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
