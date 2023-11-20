import 'package:flutter/material.dart';
import 'package:recipe_hub/doc_app.dart';

import 'core/routes/app_router.dart';

void main() {
  runApp(DocApp(
    router: AppRouter(),
  ));
}
