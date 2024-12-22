import 'package:software_design_patterns/problem_violating_srp.dart';

void main(List<String> arguments) {
  final notificationService = NotificationService();
  final orderProcessorSolution = OrderProcessorSolution(notificationService);

  orderProcessorSolution.processOrder("123");
}

/// Interface Software Design Patterns
// Best Practice to solve common software problems
// solutions in the form of templates that may be applied to real-world problems
