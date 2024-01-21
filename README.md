# SimpleHaptic

`SimpleHaptic` is a Swift package that simplifies the implementation of haptic feedback in iOS applications. It provides an easy-to-use interface for the `UIImpactFeedbackGenerator`, `UINotificationFeedbackGenerator`, and `UISelectionFeedbackGenerator` classes, making it straightforward to add haptic feedback to your iOS and SwiftUI apps.

## Features

- Simple and intuitive API for triggering haptic feedback.
- Supports impact, notification, and selection haptic types.
- Custom SwiftUI view modifiers for integrating haptic feedback into interactive UI components.

## Requirements
- iOS 14.0 or later
- Swift 5.9 or later

## Installation

### Swift Package Manager

To integrate `SimpleHaptic` into your Xcode project using Swift Package Manager, follow these steps:

1. Open your project in Xcode.
2. Select `File` > `Swift Packages` > `Add Package Dependency`.
3. Enter the following repository URL: `https://github.com/lukacs-m/SimpleHaptic`
4. Follow the prompts to complete the integration.

## Understanding Haptic Feedback Types

`SimpleHaptic` provides three main types of haptic feedback, each suited for different user interaction scenarios:

### 1. Impact Feedback
Impact feedback is used to create a sense of collision or physical contact. It comes in different styles like light, medium, and heavy, which signify the intensity of the feedback.

**Usage**: Ideal for scenarios where the user performs an action that involves a sense of physical force or contact, like moving a slider to a specific position, or snapping an object into place.

```swift
SimpleHaptic.impact(.heavy).trigger()
```

### 2. Notification Feedback
Notification feedback is used to communicate success, warning, or error states to the user.

- **Success**: Indicates that a task or action has been completed successfully.

- **Warning**: Suggests caution or alerts the user to a potential issue.

- **Error**: Indicates that an action has failed or a problem has occurred.

**Usage**: Perfect for scenarios like form submissions (success), password mismatch warnings (warning), or upload failures (error).

```swift
SimpleHaptic.notification(.error).trigger()
```

### 3. Selection Feedback
Selection feedback provides a subtle tap, giving users tactile feedback during changing selections, such as scrolling through a picker.

**Usage**: Best used in pickers, switches, or any elements where the user scrolls or chooses between different options.

```swift
SimpleHaptic.selection.trigger()
```

## SwiftUI Integration
You can easily add haptic feedback to any SwiftUI view using the provided view modifiers.

Adding to a Button
```swift
Button(action: {
    // Your action here
}) {
    Text("Tap Me")
}.hapticFeedback(.impact(.medium))
```

Adding to a Toggle
```swift
Toggle(isOn: $isToggled) {
    Text("Toggle Me")
}.hapticFeedback(.notification(.success))
```

## License

SimpleHaptic is released under the MIT License.

## Author

Martin Lukacs