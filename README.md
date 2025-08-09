## Dawnha Notes App

A simple, modern note-taking app built with Flutter. Create notes quickly, view them in a clean list, and delete what you no longer need. Data is stored locally using Hive for a fast, offline-first experience.

### Features

- **Create notes**: Add a title and content from the floating action button.
- **View notes**: Clean list with date and color accent.
- **Delete notes**: Remove instantly with the trash icon.
- **Local persistence**: Powered by Hive key-value storage.
- **Responsive UI**: Adaptive sizing with `flutter_screenutil`.
- **Custom typography**: Poppins via `google_fonts`.

### Tech stack / Packages

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc): Simple Cubit-based state management.
- [`hive`](https://pub.dev/packages/hive) + [`hive_flutter`](https://pub.dev/packages/hive_flutter): Local storage.
- [`hive_generator`](https://pub.dev/packages/hive_generator) + [`build_runner`](https://pub.dev/packages/build_runner): Code generation for Hive adapters.
- [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil): Responsive layout.
- [`google_fonts`](https://pub.dev/packages/google_fonts): Fonts (Poppins).
- [`intl`](https://pub.dev/packages/intl): Date formatting.

## Getting started

### Prerequisites

- Flutter SDK (3.x) installed and configured
- Dart >= 3.7
- Android Studio/Xcode for running on devices or simulators

### Setup

1) Fetch dependencies

```bash
flutter pub get
```

2) (Only needed if you change `lib/models/note_model.dart`) Generate Hive adapters

```bash
dart run build_runner build -d
# or
flutter pub run build_runner build -d
```

3) Run the app

```bash
flutter run
```

## How it works

- **Entry point**: `lib/main.dart`
  - Initializes Hive, registers `NoteModelAdapter`, opens the `kNotesBox`, and bootstraps the app with `BlocProvider` for `NotesCubit` and Material 3 theme.
- **Model**: `lib/models/note_model.dart`
  - `NoteModel` is a `HiveObject` with fields: `title`, `subTitle`, `date`, `color`.
- **State management**:
  - `lib/cubit/notes_cubit/` fetches and exposes all notes from Hive.
  - `lib/cubit/add_note_cubit/` handles add-note flow (loading/success/failure states).
- **UI**:
  - `lib/views/notes_view.dart`: Home screen with a FAB to add notes.
  - `lib/views/widgets/add_note_bottom_sheet.dart`: Bottom sheet hosting `AddNoteForm` and add flow.
  - `lib/views/widgets/notes_list_view.dart`: Notes listing (subscribes to `NotesCubit`).
  - `lib/views/widgets/notes_card.dart`: Per-note tile with delete action.
  - `lib/views/edit_note_view.dart`: Edit screen scaffold and inputs (save wiring can be extended).
- **Constants**:
  - `lib/constants/colors.dart`, `lib/constants/strings.dart` centralize styling and keys (e.g., `kNotesBox`).

## Project structure (high level)

```text
lib/
  constants/        # Reusable colors and strings
  cubit/            # Cubit state management (notes, add-note)
  models/           # Hive models and generated adapters
  views/            # Screens and widgets
  main.dart         # App bootstrap and theme
assets/
  icons/            # App icons
```

## Development

- Adapter generation: run `dart run build_runner build -d` after changing Hive models.
- Lints: `flutter_lints` is configured in `analysis_options.yaml`.
- Tests: run `flutter test`.

## Roadmap

- Edit note: wire up save behavior in `EditNoteView` and persist changes to Hive.
- Note colors: add a color picker for new/edit notes.
- Search and filter: implement query and sort on notes list.
- Backup/restore: optional export/import of notes.

## License

MIT (or your preferred license)
