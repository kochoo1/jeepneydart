class Jeepney {
  // Fields
  String route;
  int capacity;
  int _passengers; // Private field for encapsulation

  // Constructor
  Jeepney(this.route, this.capacity, this._passengers);

  // Getter to access the private field
  int get passengers => _passengers;

  // Method to add passengers
  void boardPassengers(int count) {
    if (count > 0 && _passengers + count <= capacity) {
      _passengers += count;
      print('$count passenger(s) boarded the $route jeepney.');
    } else {
      print(
        'Cannot board passengers. Capacity limit reached or invalid count.',
      );
    }
  }

  // Method to display jeepney information
  void displayInfo() {
    print('Route: $route');
    print('Capacity: $capacity');
    print('Current Passengers: $_passengers');
    print('Available Seats: ${capacity - _passengers}');
    print('---------------------------');
  }
}

void main() {
  // Create at least two Jeepney objects
  Jeepney jeepney1 = Jeepney('Cubao - Divisoria', 20, 10);
  Jeepney jeepney2 = Jeepney('Quiapo - Baclaran', 15, 5);

  // Store objects in a List
  List<Jeepney> jeepneys = [jeepney1, jeepney2];

  // Display initial information
  print('=== JEEPNEY MANAGEMENT SYSTEM ===');

  for (Jeepney jeepney in jeepneys) {
    jeepney.displayInfo();
  }

  // Test the methods
  jeepney1.boardPassengers(5);
  jeepney2.boardPassengers(8);

  // Display updated information
  print('\n=== UPDATED JEEPNEY INFORMATION ===');

  for (Jeepney jeepney in jeepneys) {
    jeepney.displayInfo();
  }

  // Access the private field through its getter
  print('Passengers in first jeepney: ${jeepney1.passengers}');
}
