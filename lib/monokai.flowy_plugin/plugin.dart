import 'package:flowy_plugin/flowy_plugin.dart';
import 'monokai.dart';

FlowyPlugin registerPlugin() => FlowyPlugin(shortcutEvents: [], themes: [
      const AppTheme(themeName: 'monokai', lightTheme: Monokai(), darkTheme: Monokai()),
    ]);
