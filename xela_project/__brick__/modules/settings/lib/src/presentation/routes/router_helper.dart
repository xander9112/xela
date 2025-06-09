// import 'package:core/core.dart';
// import 'package:settings/settings.dart';

// class SettingsRouter extends AppRouter {
//   SettingsRouter(super.router);

//   Future<void> goToCreateStory() async {
//     await pushPath(SettingsRoutePath.create);
//   }

//   void goToStory(String login, int id) {
//     navigateNamed(
//       SettingsRoutePath.story
//           .params(<String, dynamic>{'login': login, 'id': id}),
//     );
//   }

//   Future<void> goToStoryReaction(String login, int id) async {
//     await pushPath(
//       SettingsRoutePath.storyReaction
//           .params(<String, dynamic>{'login': login, 'id': id}),
//     );
//   }
// }
