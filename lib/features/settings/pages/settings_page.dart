import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.format_paint),
              title: Text('Enable custom theme'),
            ),
          ],
        ),
        SettingsSection(
          title: Text('Security'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.menu_book),
              title: Text('Terms of service'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: false,
              leading: Icon(Icons.lock),
              title: Text('Lock app in background'),
            ),
          ],
        ),
      ],
    );
  }
}
