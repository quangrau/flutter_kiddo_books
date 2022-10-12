import 'package:flutter/widgets.dart';

class AudioBookAuth extends ChangeNotifier {
  bool _signedIn = false;

  bool get signedIn => _signedIn;

  Future<void> signOut() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    // Sign out.
    _signedIn = false;
    notifyListeners();
  }

  Future<bool> signIn(String username, String password) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));

    // Mock signIn request
    _signedIn = true;
    notifyListeners();
    return _signedIn;
  }
}

class AudioBookAuthScope extends InheritedNotifier<AudioBookAuth> {
  // Creates a [AudioBookAuthScope].
  const AudioBookAuthScope({
    required AudioBookAuth notifier,
    required Widget child,
    Key? key,
  }) : super(key: key, notifier: notifier, child: child);

  // Gets the [BookstoreAuth] above the context.
  static AudioBookAuth of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<AudioBookAuthScope>()!
      .notifier!;
}
