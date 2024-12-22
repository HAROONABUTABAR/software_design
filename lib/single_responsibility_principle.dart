//Programming Terminology
// implamentation -> Code is written in a single file
//---------------------------------------------------------
// Single Responsibility Principle (S.R.P)
// "Do one thing and do it well"
// Uncle Bob , "There should never be more than one reason for a class to change"
// A class should have one and only one reason to change , meaning that a class should have only one job

// Example
class PaymentProcessor {
  // 4 functions for this class
  // Just this class for payment charge
  // to many reasons to change in this class this is bad

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

String customerSalesReport(int customerId) {
  // Tow reason to change in this function this is bad

  // Get customer data
  var customer = getCustomerData(customerId);

  // Get Customer sales
  var sales = getSalesByCustomerId(customerId);
  // Create report data
  String reportTitle = "Customer $customer\nSales: $sales";
  String reportData = "Customer $customer\nSales: $sales";

  var report = "$reportTitle\n$reportData";

  return report;
}

getSalesByCustomerId(int customerId) {}

getCustomerData(int customerId) {}

// Example 2

// class EmployeeService {
//   void employeeRegistration(Employee employee) {
//     Employee.add(employee);
//     sendEmail(employee.email, "Registration", "Congratution!");
//   }

//   void sendEmail(String? email, String s, String t) {
//     var emailMessage = MimeMessage();

//     /// send email

//     /// and send notification
//   }
// }
// Solution example 2

class EmployeeService {
  void employeeRegistration(Employee employee) {
    Employee.add(employee);
    EmailService.sendEmail(employee.email, "Registration", "Congratution!");
  }
}

class EmailService {
  static void sendEmail(String? email, String s, String t) {
    var emailMessage = MimeMessage();

    /// send email

    /// and send notification
  }
}

class MimeMessage {}

class Employee {
  String? email;
  static void add(Employee employee) {}
}
