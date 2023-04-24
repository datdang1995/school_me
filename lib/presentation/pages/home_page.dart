import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide TimeOfDay;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:school_me/domain/home/enums/time_of_day.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const time = TimeOfDay.morning;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.greeting('${time.current}', 'Dat'),
        ),
      ),
    );
  }
}
