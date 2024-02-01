class LineProgress {
  double starts;
  double ends;
  LineProgress({
    required this.starts,
    required this.ends,
  });
}

class DayMoodStatus {
  double value;
  bool isNeg;
  DayMoodStatus({
    required this.value,
    required this.isNeg,
  });
}

List<DayMoodStatus> moodS = [
  DayMoodStatus(value: .4, isNeg: false),
  DayMoodStatus(value: .2, isNeg: true),
  DayMoodStatus(value: .5, isNeg: true),
  DayMoodStatus(value: .3, isNeg: false),
  DayMoodStatus(value: .35, isNeg: true),
  DayMoodStatus(value: .56, isNeg: false),
];

List<List<LineProgress>> weekScore = [
  [
    LineProgress(starts: .01, ends: .1),
    LineProgress(starts: .2, ends: .25),
    LineProgress(starts: .4, ends: .7),
    LineProgress(starts: .8, ends: 1),
  ],
  [
    LineProgress(starts: .1, ends: .15),
    LineProgress(starts: .2, ends: .31),
    LineProgress(starts: .4, ends: .68),
  ],
  [
    LineProgress(starts: .0, ends: .4),
    LineProgress(starts: .7, ends: .77),
  ],
  [
    LineProgress(starts: .0, ends: .15),
    LineProgress(starts: .2, ends: .66),
  ],
  [
    LineProgress(starts: .44, ends: .5),
    LineProgress(starts: .6, ends: 1),
  ],
  [
    LineProgress(starts: .2, ends: .5),
    LineProgress(starts: .6, ends: .7),
    LineProgress(starts: .72, ends: .9),
  ],
  [
    LineProgress(starts: .3, ends: .5),
    LineProgress(starts: .8, ends: .97),
  ],
];

List<String> days = [
  'MO',
  'TU',
  'WE',
  'TH',
  'FR',
  'SA',
  'SU',
];
