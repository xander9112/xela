// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, always_declare_return_types

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String MessageIfAbsent(String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(number) => "${Intl.plural(number, one: 'Pin code must contain ${number} character', other: 'Pin code must contain ${number} characters')}";

  static m1(number) => "${Intl.plural(number, one: 'Pin code must contain ${number} character', other: 'Pin code must contain ${number} characters')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function> {
    "AuthI18n_checkInternetConnection" : MessageLookupByLibrary.simpleMessage("Check internet connection"),
    "AuthI18n_delete" : MessageLookupByLibrary.simpleMessage("Delete"),
    "AuthI18n_enterPinCode" : MessageLookupByLibrary.simpleMessage("Enter pin code"),
    "AuthI18n_invalidPin" : MessageLookupByLibrary.simpleMessage("Invalid PIN"),
    "AuthI18n_login" : MessageLookupByLibrary.simpleMessage("Login"),
    "AuthI18n_loginRequired" : MessageLookupByLibrary.simpleMessage("Login required"),
    "AuthI18n_minimumPassword" : MessageLookupByLibrary.simpleMessage("Password must have at least 6 characters"),
    "AuthI18n_password" : MessageLookupByLibrary.simpleMessage("Password"),
    "AuthI18n_passwordRequired" : MessageLookupByLibrary.simpleMessage("The password must not be empty"),
    "AuthI18n_pinCodeMustContain" : m0,
    "AuthI18n_pinCodesDoNotMatch" : MessageLookupByLibrary.simpleMessage("Pin codes do not match"),
    "AuthI18n_repeatPinCode" : MessageLookupByLibrary.simpleMessage("Repeat pin code"),
    "AuthI18n_reset" : MessageLookupByLibrary.simpleMessage("Reset"),
    "AuthI18n_resetDescription" : MessageLookupByLibrary.simpleMessage("After resetting the PIN-code, you will need to log in."),
    "AuthI18n_resetTitle" : MessageLookupByLibrary.simpleMessage("Are you sure?"),
    "AuthI18n_settingPinCode" : MessageLookupByLibrary.simpleMessage("Setting pin code"),
    "AuthI18n_signIn" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "AuthI18n_signInToAccessTheApp" : MessageLookupByLibrary.simpleMessage("Sign in to access the app"),
    "AuthI18n_unknownError" : MessageLookupByLibrary.simpleMessage("Unknown error. Please try later"),
    "AuthI18n_useBiometricsToLogin" : MessageLookupByLibrary.simpleMessage("Use biometrics to login?"),
    "AuthI18n_userNotFound" : MessageLookupByLibrary.simpleMessage("Incorrect username or password"),
    "SettingsI18n_changePinCode" : MessageLookupByLibrary.simpleMessage("Change pin code"),
    "SettingsI18n_darkTheme" : MessageLookupByLibrary.simpleMessage("Dark"),
    "SettingsI18n_delete" : MessageLookupByLibrary.simpleMessage("Delete"),
    "SettingsI18n_enterPinCode" : MessageLookupByLibrary.simpleMessage("Enter pin code"),
    "SettingsI18n_invalidPin" : MessageLookupByLibrary.simpleMessage("Invalid PIN"),
    "SettingsI18n_lightTheme" : MessageLookupByLibrary.simpleMessage("Light"),
    "SettingsI18n_pinCodeMustContain" : m1,
    "SettingsI18n_pinCodesDoNotMatch" : MessageLookupByLibrary.simpleMessage("Pin codes do not match"),
    "SettingsI18n_repeatPinCode" : MessageLookupByLibrary.simpleMessage("Repeat pin code"),
    "SettingsI18n_reset" : MessageLookupByLibrary.simpleMessage("Reset"),
    "SettingsI18n_selectLanguage" : MessageLookupByLibrary.simpleMessage("Select language"),
    "SettingsI18n_selectTheme" : MessageLookupByLibrary.simpleMessage("Select a theme"),
    "SettingsI18n_settingPinCode" : MessageLookupByLibrary.simpleMessage("Setting pin code"),
    "SettingsI18n_signInToAccessTheApp" : MessageLookupByLibrary.simpleMessage("Sign in to access the app"),
    "SettingsI18n_signOutTitle" : MessageLookupByLibrary.simpleMessage("Are you sure you want to sign out?"),
    "SettingsI18n_systemLanguage" : MessageLookupByLibrary.simpleMessage("System language"),
    "SettingsI18n_systemTheme" : MessageLookupByLibrary.simpleMessage("System"),
    "SettingsI18n_theme" : MessageLookupByLibrary.simpleMessage("Theme"),
    "SettingsI18n_title" : MessageLookupByLibrary.simpleMessage("Settings page"),
    "SettingsI18n_update" : MessageLookupByLibrary.simpleMessage("Update page"),
    "SettingsI18n_useBiometrics" : MessageLookupByLibrary.simpleMessage("Use biometrics?"),
    "SettingsI18n_useBiometricsToLogin" : MessageLookupByLibrary.simpleMessage("Use biometrics to login?"),
    "SettingsI18n_useLocalAuth" : MessageLookupByLibrary.simpleMessage("Use local auth?")
  };
}
