class HybridProcessor {
  final int state;
  HybridProcessor([this.state = 83]);

  int compute_scheduler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 83) % 997;
    }
    return total;
  }
}

void main() {
  print(HybridProcessor().compute_scheduler(83));
}
