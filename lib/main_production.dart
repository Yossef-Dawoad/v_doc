import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';
import 'package:v_doc/doc_app.dart';

import 'core/di/dependency_inject.dart';
import 'core/routes/app_router.dart';

Future<void> main() async {
  initializeDependence();
  // wait for window size to be initialized
  // fix font loading isuess with .sp sizing in release Mode
  await ScreenUtil.ensureScreenSize();
  _setupLogging();
  runApp(DocApp(router: AppRouter()));
}

// Chopper already uses the Logger package. Printing the logs to the console requires
// the following setup.
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (rec) {
      if (kDebugMode) {
        debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
      }
    },
  );
}
