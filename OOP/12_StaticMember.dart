// Static members in Dart are class-level members, meaning they belong to the class itself, not to objects (instances).
// Types of Static Members

// Dart supports:

// Static variables (fields)
// Static methods
// Static getters/setters

class AppConfig {
  // ==============================
  // 1. STATIC VARIABLE (FIELD)
  // ==============================
  // Shared across all instances (class-level state)
  static String appName = "MyApp";

  static int _version = 1; // private static variable

  // ==============================
  // 2. STATIC GETTER
  // ==============================
  // Used to safely expose private static data
  static int get version => _version;

  // ==============================
  // 3. STATIC SETTER
  // ==============================
  // Used to control how static data is modified
  static set version(int newVersion) {
    if (newVersion > 0) {
      _version = newVersion;
    } else {
      print("Version must be greater than 0");
    }
  }

  // ==============================
  // 4. STATIC METHOD
  // ==============================
  // Utility function related to class, not instance
  static void printAppInfo() {
    print("App Name: $appName");
    print("Version: $_version");
  }

  // Another static utility method
  static bool isLatestVersion(int checkVersion) {
    return checkVersion >= _version;
  }
}

void main() {
  // Access static variable directly using class name
  print(AppConfig.appName);

  // Use static setter
  AppConfig.version = 2;

  // Use static getter
  print(AppConfig.version);

  // Call static method
  AppConfig.printAppInfo();

  // Another static method
  bool result = AppConfig.isLatestVersion(3);
  print("Is latest version? $result");
}
