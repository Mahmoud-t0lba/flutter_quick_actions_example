import 'package:quick_actions/quick_actions.dart';

class ShortcutItems {
  static final items = <ShortcutItem>[actionSearch, actionTask, actionSend];

  static const actionSearch = ShortcutItem(
    type: 'action_search',
    localizedTitle: 'Search',
    icon: 'icon_search',
  );

  static const actionTask = ShortcutItem(
    type: 'action_task',
    localizedTitle: 'Create Task',
    icon: 'icon_task',
  );

  static const actionSend = ShortcutItem(
    type: 'action_send',
    localizedTitle: 'Send Message',
    icon: 'icon_send',
  );
}
