// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Ride-hailing`
  String get onboarding1Title {
    return Intl.message(
      'Welcome to Ride-hailing',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `Discover a smarter way to move around the city. Wherever you are, your next ride is just a tap away.`
  String get onboarding1Description {
    return Intl.message(
      'Discover a smarter way to move around the city. Wherever you are, your next ride is just a tap away.',
      name: 'onboarding1Description',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Ride in Real Time`
  String get onboarding2Title {
    return Intl.message(
      'Track Your Ride in Real Time',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `Know exactly where your driver is with live tracking and clear ETAs—no more guessing or waiting in the dark.`
  String get onboarding2Description {
    return Intl.message(
      'Know exactly where your driver is with live tracking and clear ETAs—no more guessing or waiting in the dark.',
      name: 'onboarding2Description',
      desc: '',
      args: [],
    );
  }

  /// `Fast, Reliable, and On-Time`
  String get onboarding3Title {
    return Intl.message(
      'Fast, Reliable, and On-Time',
      name: 'onboarding3Title',
      desc: '',
      args: [],
    );
  }

  /// `Skip the delays. Get matched with nearby drivers and reach your destination quickly and safely.`
  String get onboarding3Description {
    return Intl.message(
      'Skip the delays. Get matched with nearby drivers and reach your destination quickly and safely.',
      name: 'onboarding3Description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
