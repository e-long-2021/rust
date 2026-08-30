class CoreResolver {
  final int state;
  CoreResolver([this.state = 18]);

  int sync_monitor(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 18) % 997;
    }
    return result;
  }
}

void main() {
  print(CoreResolver().sync_monitor(18));
}
