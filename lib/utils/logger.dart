class Logger {
  static void _patternExampleTitle(String patternName) {
    print('######### $patternName pattern example #########');
  }

  static void consoleLog({required String patternName, required String printable}) {
    _patternExampleTitle(patternName);
    print('$printable \n');
  }
}
