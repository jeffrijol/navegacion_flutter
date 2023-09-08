import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';


part 'stream_provider.g.dart';


@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {

  final names = <String>['Fernando Herrera'];
  yield names;

  await for ( final name in RandomGenerator.randomNameStream() ) {
    names.add(name);
    yield names;
  }


}



