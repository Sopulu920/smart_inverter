class statInfo {
  final String statLabel;
  final String statValue;
  final String statUnit;

  statInfo({
    required this.statLabel,
    required this.statValue,
    required this.statUnit,
  });
}

List<statInfo> statList = [
  statInfo(statLabel: "Energy Consumed", statValue: "80", statUnit: "J"),
  statInfo(statLabel: "Voltage", statValue: "80", statUnit: "V"),
  statInfo(statLabel: "Output Power", statValue: "80", statUnit: "W"),
  statInfo(statLabel: "Output Current", statValue: "80", statUnit: "A"),
  statInfo(statLabel: "Frequency", statValue: "80", statUnit: "Hz"),
];
