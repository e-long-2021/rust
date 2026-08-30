class FastProvider {
  final int state;
  FastProvider([this.state = 35]);

  int load_adapter(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 35) % 997;
    }
    return value;
  }
}

void main() {
  print(FastProvider().load_adapter(35));
}
