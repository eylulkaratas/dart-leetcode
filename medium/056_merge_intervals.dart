import 'dart:math';

List<List<int>> mergeIntervals(List<List<int>> intervals) {
  if (intervals.length <= 1) return intervals;
  intervals.sort((a, b) => a[0].compareTo(b[0]));
  List<List<int>> merged = [];
  List<int> currentInterval = intervals[0];
  merged.add(currentInterval);

  for (List<int> interval in intervals) {
    int currentEnd = currentInterval[1];
    int nextStart = interval[0];
    int nextEnd = interval[1];

    if (currentEnd >= nextStart) {
      currentInterval[1] = max(currentEnd, nextEnd);
    } else {
      currentInterval = interval;
      merged.add(currentInterval);
    }
  }
  return merged;
}
