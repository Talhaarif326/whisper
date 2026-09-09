<div align="center">

# 🌙 Whisper

### A Flutter Chat Application — Built with Clean Architecture & BLoC

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Bloc](https://img.shields.io/badge/State%20Management-BLoC-5C3EE8?style=for-the-badge)](https://bloclibrary.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![Architecture](https://img.shields.io/badge/Architecture-Clean-00C853?style=for-the-badge)]()

</div>

<br>

> 🚧 **Status:** Early development — project scaffolding and splash screen flow are in progress. More features coming soon.

---

## 🔎 Overview

**Whisper** is a real-time chat app designed with scalability and maintainability in mind. The project follows Clean Architecture principles, separating concerns into distinct layers so business logic stays independent of UI and data sources.

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart |
| State Management | flutter_bloc (Bloc/Cubit) |
| Architecture | Clean Architecture (Data / Domain / Presentation) |
| Backend | Firebase |

---

## 🏗️ Architecture

The project follows a feature-first Clean Architecture structure:

```
lib/
├── core/                   # Shared code across features
│   ├── constants/          # Colors, strings, sizes
│   ├── theme/              # App theming
│   ├── routes/             # Route management
│   ├── widgets/            # Shared reusable widgets
│   ├── error/              # Failure/error handling
│   ├── usecases/           # Base use case abstraction
│   └── di/                 # Dependency injection setup
│
├── features/
│   └── splash/
│       ├── data/           # Data sources, models, repository implementations
│       ├── domain/         # Entities, repository interfaces, use cases
│       └── presentation/   # Bloc, pages, widgets
│
├── barrel.dart             # Centralized exports
└── main.dart
```

Each feature is self-contained with its own `data`, `domain`, and `presentation` layers:

- **Domain layer** — Pure business logic (entities, use case contracts, repository interfaces). No Flutter or external dependencies.
- **Data layer** — Concrete implementations: API calls, local storage, models, repository implementations.
- **Presentation layer** — UI (widgets/pages) and state management (Bloc/Cubit) that reacts to domain logic and updates the UI.

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart SDK (bundled with Flutter)
- Android Studio / Xcode (for mobile builds)

### Installation

```bash
# Clone the repository
git clone https://github.com/Talhaarif326/whisper.git
cd whisper

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## 💡 Project Structure Philosophy

This project is being built as a learning-driven exercise in applying Clean Architecture and BLoC pattern correctly in a real-world-style Flutter app — prioritizing separation of concerns, testability, and scalability over rapid feature delivery.

---

## 👤 Author

<div align="center">

**Talha Arif**
Flutter Developer

</div>

---

## 📄 License

This project is currently unlicensed. All rights reserved by the author.

<div align="center">

<sub>Built with 💙 and Flutter</sub>

</div>
