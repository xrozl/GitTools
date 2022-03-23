import 'package:args/args.dart';

import 'Command.dart';
import 'Utils.dart';

class CommandManager {

  Map<String, Command> commands = null;
  CommandManager() {
    commands = new Map<String, Command>();
  }

  void call(String commandName, ArgResults results) {
    if (commands.containsKey(commandName)) {
      commands[commandName].call(results);
    }
  }

  void register(String commandName, Command command) {
    commands[commandName] = command;
  }

  void run(ArgParser parser, List<String> arguments) {
    ArgResults results = parser.parse(arguments);
    String cmd = null;
    try {
      cmd = results.rest[0];
    } catch (e) {
      print(e);
    } finally {
      if (cmd == null) {
        return;
      }
    }
    if (commands.containsKey(cmd)) {
      commands[cmd].call(results);
    } else {
      info("Command not found: $cmd");
    }
  }
}