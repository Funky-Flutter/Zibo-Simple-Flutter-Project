# Zibo-Simple-Flutter-Project

This is a basic Flutter app that demonstrates the use of various Flutter widgets and concepts, including forms, images, decorators, and orientation detection. The app is designed with modularity in mind, with each component of the UI separated into its own class.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Running the App](#running-the-app)
- [Folder Structure](#folder-structure)

## Overview

This Flutter application is a simple demonstration of several key concepts:
- Using basic widgets like `Scaffold`, `SafeArea`, `AppBar`, `Container`, and `Text`.
- Implementing forms with validation using `Form` and `TextFormField`.
- Displaying images and icons using `Image` and `Icon`.
- Applying decorators to widgets using `BoxDecoration`.
- Detecting device orientation using `OrientationBuilder`.

## Features

- **Decorated Container**: A container with rounded corners and a shadow.
- **Form with Validation**: A form that includes username and password fields with validation.
- **Image Display**: A section that displays an image and an icon.
- **Button Row**: A row of buttons demonstrating different button styles.
- **Orientation Detection**: A footer that displays the current orientation of the device.

## Installation

### Prerequisites
- Ensure you have [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine.

### Steps

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/basic-flutter-app.git
    cd basic-flutter-app
    ```

2. **Get the dependencies**:
    ```bash
    flutter pub get
    ```

3. **Add your image assets**:
   - Place your images in the `assets` directory.
   - Update the `pubspec.yaml` file to include the assets:
     ```yaml
     assets:
       - assets/my_image.png
     ```

## Running the App

To run the app on an emulator or a physical device, use the following command:

```bash
flutter run
```

## Folder Structure
````
   Zibo-Simple-Flutter-Project/
   ├── lib/
   │   ├── main.dart                    # Entry point of the application
   │   ├── home_screen.dart             # Home screen of the application
   │   ├── decorated_container.dart     # Decorated container widget
   │   ├── form_example.dart            # Form with validation
   │   ├── image_example.dart           # Image and icon display
   │   ├── button_row.dart              # Row of buttons
   │   └── orientation_indicator.dart   # Device orientation indicator
   ├── assets/
   │   └── my_image.png                 # Example image asset
   └── pubspec.yaml                     # Configuration file