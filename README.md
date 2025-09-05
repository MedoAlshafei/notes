## Dawnha Notes App

A beautiful and intuitive notes application built with Flutter, featuring modern UI design and robust state management.

## ✨ Features

### Core Functionality
- **📝 Add Notes** - Create new notes with title and content
- **✏️ Edit Notes** - Update existing notes seamlessly
- **🗑️ Delete Notes** - Remove notes with a simple tap
- **💾 Auto-Save** - All changes are automatically saved locally

### Technical Features
- **🎨 Beautiful UI** - Modern dark theme with smooth animations
- **📱 Responsive Design** - Optimized for different screen sizes
- **🔄 State Management** - Powered by Flutter Bloc/Cubit
- **💿 Local Storage** - Persistent data storage with Hive database

## 🏗️ Architecture

The app follows **Clean Architecture** principles with separation of concerns:

```
lib/
├── main.dart                   # App entry point
├── simple_bloc_observer.dart   # Bloc observer for state changes
├── constants/
│   ├── colors.dart             # Color constants
│   └── strings.dart            # String constants
├── cubit/
│   ├── add_note_cubit/         # State management for adding notes
│   └── notes_cubit/            # State management for the notes list
├── models/
│   ├── note_model.dart         # The data model for a note
│   └── note_model.g.dart       # Generated Hive adapter for NoteModel
└── views/
    ├── edit_note_view.dart     # The view for editing a note
    ├── notes_view.dart         # The main view displaying the list of notes
    └── widgets/
        ├── add_note_bottom_sheet.dart # Bottom sheet for adding a new note
        ├── add_note_form.dart         # Form for adding a new note
        ├── colors_list_view.dart      # List view for selecting note colors
        ├── custom_app_bar.dart        # Reusable custom app bar
        ├── custom_button.dart         # Reusable custom button
        ├── custom_icon.dart           # Reusable custom icon button
        ├── custom_snack_bar.dart      # Custom snack bar for notifications
        ├── custom_text_field.dart     # Reusable custom text field
        ├── edit_note_colors_list.dart # Color list for the note editing view
        ├── edit_note_view_body.dart   # Body layout for the edit note view
        ├── notes_card.dart            # Widget for displaying a single note
        ├── notes_list_view.dart       # Widget for displaying the list of notes
        └── notes_view_body.dart       # Body layout for the notes list view
```

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **Dart** - Programming language
- **Flutter Bloc/Cubit** - State management solution
- **Hive** - Fast, lightweight NoSQL database
- **Modal Progress HUD** - Loading indicators

## 📦 Dependencies

```yaml
dependencies:
  cupertino_icons: ^1.0.8
  flutter:
    sdk: flutter
  flutter_bloc: ^9.1.1
  flutter_screenutil: ^5.9.3
  google_fonts: ^6.2.1
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  intl: ^0.20.2
  modal_progress_hud_nsn: ^0.5.1

dev_dependencies:
  build_runner: ^2.4.13
  flutter_lints: ^5.0.0
  flutter_test:
    sdk: flutter
  hive_generator: ^2.0.0
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator



## 🎯 Key Features Explained

### 1. Add Notes
- Tap the floating action button to open the add note modal
- Fill in the title and content fields
- Notes are automatically timestamped
- Real-time validation ensures required fields are completed

### 2. View Notes
- All notes are displayed in a beautiful card-based layout
- Each note shows title, content preview, and creation date
- Smooth scrolling with optimized performance

### 3. Edit Notes
- Tap any note to open the edit screen
- Make changes to title and content
- Auto-save functionality preserves your edits
- Navigate back to see updates immediately

### 4. Delete Notes
- Use the delete button on each note card
- Instant removal with automatic list refresh
- No confirmation dialog for quick deletion

## 🔧 State Management

The app uses **Cubit** pattern for state management:

### AddNoteCubit
- Handles note creation logic
- Manages loading states during save operations
- Provides error handling for failed operations

### NotesCubit
- Manages the list of all notes
- Handles data retrieval from Hive database
- Updates UI when notes are added, edited, or deleted

## 💾 Data Persistence

**Hive Database** is used for local storage:
- Fast, lightweight NoSQL database
- Type-safe with generated adapters
- Perfect for offline-first applications
- Automatic data serialization/deserialization
