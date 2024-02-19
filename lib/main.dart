import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:recipe_hub/doc_app.dart';

import 'core/di/dependency_inject.dart';
import 'core/routes/app_router.dart';

void main() {
  _setupLogging();
  initializeDependence();
  runApp(DocApp(router: AppRouter()));
}

// Chopper already uses the Logger package. Printing the logs to the console requires
// the following setup.
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode)
      debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
