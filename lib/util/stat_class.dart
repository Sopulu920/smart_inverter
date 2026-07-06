class StatInfo {
  final String statLabel;
  final String statValue;
  final String statUnit;

  StatInfo({
    required this.statLabel,
    required this.statValue,
    required this.statUnit,
  });
}

List<StatInfo> statList = [
  StatInfo(statLabel: "Energy Consumed", statValue: "80", statUnit: "Kwh"),
  StatInfo(statLabel: "Voltage", statValue: "80", statUnit: "V"),
  StatInfo(statLabel: "Output Power", statValue: "80", statUnit: "Kw"),
  StatInfo(statLabel: "Output Current", statValue: "80", statUnit: "A"),
  StatInfo(statLabel: "Frequency", statValue: "80", statUnit: "Hz"),
];
