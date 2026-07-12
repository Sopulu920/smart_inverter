class OutputPowerUsage {
  final String outputTerminal;
  final double outputPercentage;

  OutputPowerUsage({
    required this.outputTerminal,
    required this.outputPercentage,
  });
}

List<OutputPowerUsage> outputPower = [
  OutputPowerUsage(outputPercentage: 90, outputTerminal: "OUTPUT 1"),
  OutputPowerUsage(outputPercentage: 58, outputTerminal: "OUTPUT 2"),
  OutputPowerUsage(outputPercentage: 22, outputTerminal: "OUTPUT 3"),
];
