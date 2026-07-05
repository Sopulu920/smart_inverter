class OutputList {
  final String outputLabel;
  bool isActive;

  OutputList({required this.outputLabel, required this.isActive});
}

List<OutputList> outputLists = [
  OutputList(outputLabel: "Output Terminal 1", isActive: false),
  OutputList(outputLabel: "Output Terminal 2", isActive: false),
  OutputList(outputLabel: "Output Terminal 3", isActive: false),
];
