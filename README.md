# PNDLM Assessment

A Flutter app showcasing development skills for PNDLM's assessment.

**Live Demo:** <https://pndlm-assessment.web.app/>

## Assessment Overview

This project follows the instructions provided in the [pndlm/clockapp](https://github.com/pndlm/clockapp) GitHub repository and aligns with the provided Figma design to meet all assessment requirements.

For a detailed side-by-side comparison of the design and implementation, [view the Figma link](https://www.figma.com/design/sC1IdWjwKjtImg3CqiodWb/PNDLM-Assessment-(clone)?node-id=0-1&t=qt2n7lvIDqelsKOp-1).

## Key Features and Technologies

- Built with Flutter 3.29.0.
- State management and dependency injection with [Riverpod](https://riverpod.dev/).
- Manage widget lifecycle and state with [flutter_hooks](https://pub.dev/packages/flutter_hooks).
- Network requests with [dio](https://pub.dev/packages/dio) and custom interceptors for authorization and token refresh.
- Routing and authentication redirection with [go_router](https://pub.dev/packages/go_router).
- Local storage with [shared_preferences](https://pub.dev/packages/shared_preferences).
- Securely storing access and refresh tokens using [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage).
- Immutable data models and JSON serialization using [built_value](https://pub.dev/packages/built_value).
- Validate account input for a valid email format, phone number, or username, and ensure password meets minimum length requirements.
- Draw scalable clocks with [CustomPainter](https://api.flutter.dev/flutter/rendering/CustomPainter-class.html) and use Riverpod to reduce unnecessary rebuilds when the clocks tick.
- Support accurate timezone conversion using the [timezone](https://pub.dev/packages/timezone) package.
- Custom app theme with consistent colors, typography, and input/checkbox styling.
- Automated deployment to Firebase Hosting via GitHub Actions.
