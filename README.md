# Flutter Authentication App

A simple Flutter app demonstrating Firebase Authentication using email and password-based sign-up and sign-in. The app includes a **Dashboard** page, accessible only after successful authentication, and utilizes **GetX** for state management and navigation.

---

## 📌 Prerequisites
Before you begin, ensure you have the following:

- **Flutter SDK**: Install Flutter from [flutter.dev](https://flutter.dev/).
- **Firebase Project**: Set up Firebase in your project and enable **Email/Password Authentication**.
- **Firebase Dependencies**: Add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.24.2
  firebase_auth: ^4.17.4
  get: ^4.6.5
```

---

## 🏗 App Structure
The app consists of the following key components:

1. **Sign-Up Page** - Allows users to create an account using their email and password.
2. **Sign-In Page** - Enables users to log in with their registered credentials.
3. **Dashboard Page** - A protected page accessible only after successful authentication.

---

## 🚀 Steps for Implementation

### 1️⃣ Firebase Setup
- Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
- Enable **Email/Password Authentication** in the Firebase Authentication settings.
- Add the Firebase configuration file to your project:
  - **For Android**: Add `google-services.json` to `android/app/`.
  - **For iOS**: Add `GoogleService-Info.plist` to `ios/Runner/`.
- Initialize Firebase in `main.dart`:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
```

### 2️⃣ Authentication Service
A dedicated authentication service handles Firebase authentication operations such as:
- Signing up new users.
- Signing in existing users.
- Signing out users.

### 3️⃣ Sign-Up Page
Users enter their email and password to register a new account.

### 4️⃣ Sign-In Page
Users log in using their registered email and password.

### 5️⃣ Dashboard Page
After successful authentication, users are redirected to this protected page.

---

## 🛠 How to Run the App

Follow these steps to run the app locally:

1. Clone the repository:
   ```bash
 ##  git clone <repository_url>
 ## cd <project_directory>
   ```
2. Set up Firebase and enable **Email/Password Authentication**.
3. Add Firebase configuration files (`google-services.json` for Android or `GoogleService-Info.plist` for iOS).
4. Install dependencies:
   ```bash
   flutter pub get
   ```
5. Run the app:
   ```bash
   flutter run
   ```

---

## 📚 Learnings and Conclusion
### Key Learnings:
- **Firebase Authentication**: Implemented email/password-based authentication with Firebase.
- **GetX for State Management**: Utilized GetX for efficient state management and navigation.
- **Flutter UI Design**: Built a responsive and user-friendly interface.

---

## 📜 License
This project is licensed under the **MIT License**. See the `LICENSE` file for more details.

---

✅ Happy Coding! 🎉

