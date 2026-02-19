# Contributing to Mihir

Thanks for your interest in contributing to Mihir!

## Code contributions

Pull requests are welcome!

If you're interested in taking on [an open issue](https://github.com/SerSaumy/mihir/issues), please comment on it so others are aware. You do not need to ask for permission nor an assignment.

## Prerequisites

Before you start, please note that familiarity with the following technologies is **recommended**:

* [Flutter](https://flutter.dev/) and [Dart](https://dart.dev/)
* [Riverpod](https://riverpod.dev/) for state management
* [Drift](https://drift.simonbinder.eu/) for database operations
* Basic Node.js (for extension bridge work)

### Tools

* [Flutter SDK](https://flutter.dev/docs/get-started/install) (latest stable)
* [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) with Flutter plugins
* Windows 10+ for building and testing

## Getting started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/mihir.git`
3. Set up the project (see [README - For Developers](./README.md#for-developers))
4. Create a branch: `git checkout -b feature/your-feature-name`
5. Make your changes
6. Run `flutter analyze` and fix any issues
7. Commit with clear messages
8. Push and open a pull request

## Reporting issues

Before reporting a new issue, please check:

* The [changelog](./CHANGELOG.md) for known issues
* [Existing issues](https://github.com/SerSaumy/mihir/issues) to avoid duplicates

When reporting, include:

* Windows version
* Flutter version (`flutter --version`)
* Steps to reproduce
* Expected vs actual behavior

## Code style

* Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
* Use `flutter analyze` and `flutter format` before submitting
* Add tests for new features when possible

## Forks

Forks are allowed so long as they abide by [the project's LICENSE](./LICENSE).

When creating a fork, remember to:

* Change the app name to avoid confusion
* Change the app icon
* Update any analytics or update checker endpoints if you add them
