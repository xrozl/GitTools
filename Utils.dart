import 'dart:io';

// console logger
void ptl(Object s) => print(s);
void error(Object s) => print("[ERROR] $s");
void warning(Object s) => print("[WARNING] $s");
void debug(Object s) => print("[DEBUG] $s");
void info(Object s) => print("[INFO] $s");

// check object type
bool isInt(String value) => int.parse(value, onError: (s) => null) != null;
bool isDouble(String value) => value != null && (double.parse(value, (e) => null) != null);
bool isBool(String value) => value == "true" || value == "false";
bool isString(String value) => value != null && value.isNotEmpty;
bool isList(String value) => value != null && value.startsWith("[");
bool isMap(String value) => value != null && value.startsWith("{");

// url utils
String urlEncode(String s) => Uri.encodeComponent(s);
String urlDecode(String s) => Uri.decodeComponent(s);

// scan
String read() => (stdin.readLineSync() ?? "");
