import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'state_providers.g.dart';


@Riverpod(keepAlive: true)
class Counter extends _$Counter {
 
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}


@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}

@Riverpod(keepAlive: true)
class Username extends _$Username {
  @override
  String build() => 'Melissa Flores';

  void changeName( String name ) {
    state = name;
  }
}



@Riverpod(keepAlive: true)
class Getrouter extends _$Getrouter {
  @override
  String build() => '/';

  void changeRouter( String name ) {
    state = name;
  }
}



@Riverpod(keepAlive: true)
class UserId extends _$UserId {
  @override
  String build() => '6463446d5b67c0906eac8679'; //await DatabaseProvider().getUserId();

}

@Riverpod(keepAlive: true)
class Token extends _$Token {
  @override
  String build() => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXBlcmZhY2lsZGVyZWNvcmRhckBob3RtYWlsLmNvbSIsImlhdCI6MTY5ODMxNzEyOSwiZXhwIjoxNjk5NTMwMzI5fQ.3TLXnZXWFBtn4ddn6R9-GFkHaC58oUxnjbhqg7jjYnM';//await DatabaseProvider().getToken();
  
}
