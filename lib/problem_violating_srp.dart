// This class -> Violating SRP
/*
Why does it violate SRP?
	•	The class is responsible for:
	1.	Processing the order.
	2.	Sending a notification.

  How does this adhere to SRP?
	1.	OrderProcessor:
	•	Handles only the task of processing orders.
	2.	NotificationService:
	•	Handles only the task of sending notifications.
*/
class OrderProcessor {
  void processOrder(int orderId) {
    // process order
    print("Proceesing order : $orderId");

    print("sending notification for order : $orderId");
  }
}

//Solution: Adhering to SRP
class NotificationService {
  void sendNotification(String message) {
    print("Sending notification: $message");
  }
}

class OrderProcessorSolution {
  OrderProcessorSolution(this.notificationService);
  final NotificationService notificationService;

  void processOrder(String orderId) {
    print("Processing order: $orderId");
    notificationService.sendNotification("Order $orderId has been processed.");
  }
}
