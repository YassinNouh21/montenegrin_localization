# Montenegrin Localization

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

A Flutter localization package specifically designed for Montenegrin script (crnogorski/латиница) that provides comprehensive text translations and region-specific formatting.

## Features 🎯

- Complete Montenegrin translations for Material Design
- Cupertino (iOS-style) widget translations
- Base widget localizations
- Date and number formatting specific to Montenegrin standards
- Support for both Latin script
- Custom date patterns and symbols

## Installation 💻

**❗ In order to start using Montenegrin Localization you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `montenegrin_localization` to your `pubspec.yaml`:

```yaml
dependencies:
  montenegrin_localization: ^latest_version
```

Or install via command line:

```sh
dart pub add montenegrin_localization
```

## Usage 📖

1. Import the package:

```dart
import 'package:montenegrin_localization/montenegrin_localization.dart';
```

2. Add the Montenegrin localization delegates to your `MaterialApp`:

```dart
MaterialApp(
  localizationsDelegates: const [
    // Add these delegates
    MontenegrinMaterialLocalizations.delegate,
    MontenegrinCupertinoLocalizations.delegate,
    MontenegrinWidgetsLocalizations.delegate,
    
    // Default delegates
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('cnr'), // Montenegrin
  ],
  // ... other settings
);
```

## Available Localizations 🌍

The package includes three main types of localizations:

- **Material Localizations**: Translations for Material Design widgets
- **Cupertino Localizations**: Translations for iOS-style widgets
- **Widget Localizations**: Base widget translations

### Example Usage

```dart
// Get localized strings
final localizedText = MaterialLocalizations.of(context).copyButtonLabel;
// Returns "Kopiraj" for Montenegrin

// Format dates
final formattedDate = MaterialLocalizations.of(context).formatFullDate(DateTime.now());
// Returns date in Montenegrin format
```