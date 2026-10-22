// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "onboarding1Description": MessageLookupByLibrary.simpleMessage(
            "Discover a smarter way to move around the city. Wherever you are, your next ride is just a tap away."),
        "onboarding1Title":
            MessageLookupByLibrary.simpleMessage("Welcome to Ride-hailing"),
        "onboarding2Description": MessageLookupByLibrary.simpleMessage(
            "Know exactly where your driver is with live tracking and clear ETAs—no more guessing or waiting in the dark."),
        "onboarding2Title": MessageLookupByLibrary.simpleMessage(
            "Track Your Ride in Real Time"),
        "onboarding3Description": MessageLookupByLibrary.simpleMessage(
            "Skip the delays. Get matched with nearby drivers and reach your destination quickly and safely."),
        "onboarding3Title":
            MessageLookupByLibrary.simpleMessage("Fast, Reliable, and On-Time"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip")
      };
}
