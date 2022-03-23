import 'package:args/args.dart';

abstract class Command {
  Command();

  void call(ArgResults results);

}