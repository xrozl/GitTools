import 'dart:io';

import 'package:args/args.dart';

import 'CommandManager.dart';
import 'Utils.dart';
import 'commands/Help.dart';

bool force = false;
CommandManager manager;
List<String> commands() => manager.commands.keys.toList();

main(List<String> args) {
  final parser = new ArgParser()
    ..addFlag('force', negatable: false, abbr: 'f');

  // test
  ptl(isInt('1'));
  ptl(isInt('1.1'));
  ptl(isInt('ああ'));

  manager = new CommandManager();
  manager.register("help", new Help());

  manager.run(parser, args);
}