void main() {
  int orderId = 12345;
  String customerName = 'Aisha Khan';
  int numberOfItems = 3;
  double totalAmount = 750.0;
  int statusCode = 2;

  print('--- Order Confirmation ---');
  print('Order ID: $orderId');
  print('Customer Name: $customerName');
  print('Number of Items: $numberOfItems');
  print('Total Amount: Rs ${totalAmount.toStringAsFixed(2)}');

  if (totalAmount > 500) {
    print('Delivery Tier: Express Delivery');
  } else {
    print('Delivery Tier: Standard Delivery');
  }

  String statusLabel;
  switch (statusCode) {
    case 1:
      statusLabel = 'Preparing';
      break;
    case 2:
      statusLabel = 'Out for Delivery';
      break;
    case 3:
      statusLabel = 'Delivered';
      break;
    default:
      statusLabel = 'Unknown Status';
  }
  print('Order Status: $statusLabel');
}
