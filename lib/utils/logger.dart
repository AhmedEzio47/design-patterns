class Logger {
  static void patternExampleTitle(String patternName) {
    print('######### $patternName pattern example #########');
  }

  static void consoleLog({required String patternName, required String printable}) {
    patternExampleTitle(patternName);
    print(printable);
    print('');
  }
}
