//Programming Terminology
// implamentation -> Code is written in a single file
//---------------------------------------------------------
// Single Responsibility Principle (S.R.P)
// "Do one thing and do it well"
// Uncle Bob , "There should never be more than one reason for a class to change"
// A class should have one and only one reason to change , meaning that a class should have only one job

// Example
class PaymentProcessor {
  void charge(double amount) {
    // initialize bank data
    // send request to the bank
  }
  String createReport() {
    // format a report
    return "report";
  }

  void printReport() {
    // sned a printing command
  }
  void savePayment() {
    // saving to DB
  }
}
