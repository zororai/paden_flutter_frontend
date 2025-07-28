import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class PadenAuthUser {
  PadenAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PadenAuthUser> padenAuthUserSubject =
    BehaviorSubject.seeded(PadenAuthUser(loggedIn: false));
Stream<PadenAuthUser> padenAuthUserStream() =>
    padenAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
