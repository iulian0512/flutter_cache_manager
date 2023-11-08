abstract class FileNameValidator {
  static final List<String> forbiddenWindowsCharacters = [
    '<',
    '>',
    ':',
    '"',
    '/',
    '\\',
    '|',
    '?',
    '*'
  ];
  static final List<String> forbiddenWindowsFileNames = [
    'CON',
    'PRN',
    'AUX',
    'NUL',
    'COM1',
    'COM2',
    'COM3',
    'COM4',
    'COM5',
    'COM6',
    'COM7',
    'COM8',
    'COM9',
    'LPT1',
    'LPT2',
    'LPT3',
    'LPT4',
    'LPT5',
    'LPT6',
    'LPT7',
    'LPT8',
    'LPT9'
  ];

  static bool isValidFileName(String fileName) {
    // Check for forbidden characters in Windows
    for (final char in forbiddenWindowsCharacters) {
      if (fileName.contains(char)) return false;
    }

    // Check for forbidden file names in Windows
    if (forbiddenWindowsFileNames.contains(fileName.toUpperCase()))
      return false;

    // Check for Linux forbidden character (forward slash)
    if (fileName.contains('/')) return false;

    return true;
  }
}
