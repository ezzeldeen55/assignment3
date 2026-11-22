class BankAccount {
  int accountID;
  double balance;

  // First Constructor
  BankAccount(this.accountID, this.balance);

  // Second Constructor
  BankAccount.zero(this.accountID) : balance = 0;

  // Deposit Method
  void deposit(double amount) {
    balance += amount;
    print("Deposit successful");
  }

  // Withdraw Method
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdraw successful");
    } else {
      print("Insufficient balance");
    }
  }

  // Display Method
  void display() {
    print("Account ID: $accountID");
    print("Balance: $balance");
  }
}

void main() {
  BankAccount account1 = BankAccount(101, 1000);

  account1.deposit(500);
  account1.withdraw(200);
  account1.display();

  print("----------");

  BankAccount account2 = BankAccount.zero(102);
  account2.display();
}
/////////////////////////////////////////////////////////
//Q2
class Holiday {
  String name;
  int day;
  String month;

  // Constructor
  Holiday(this.name, this.day, this.month);

  // Check if two holidays are in the same month
  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }

  // Calculate average day
  static double avgDate(List<Holiday> holidays) {
    int sum = 0;

    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].day;
    }

    return sum / holidays.length;
  }
}

void main() {
  // Create Holiday objects
  Holiday h1 = Holiday("Independence Day", 4, "July");
  Holiday h2 = Holiday("New Year", 1, "January");
  Holiday h3 = Holiday("Christmas", 25, "December");
  Holiday h4 = Holiday("Another Holiday", 10, "July");

  // Test inSameMonth
  print(Holiday.inSameMonth(h1, h2));
  print(Holiday.inSameMonth(h1, h4));

  // Create List of Holidays
  List<Holiday> holidays = [h1, h2, h3, h4];

  // Test avgDate
  print("Average day: ${Holiday.avgDate(holidays)}");
}
////////////////////////////////////////////////////////////////////
//Q3

class Movie {
  String title;
  String studio;
  String rating;

  // Constructor with default rating
  Movie(this.title, this.studio, [this.rating = "PG"]);

  // getPG Method
  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];

    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains("PG")) {
        result.add(movies[i]);
      }
    }

    return result;
  }
}

void main() {
  // Create Movie objects
  Movie m1 = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie m2 = Movie("Movie 2", "Studio A", "PG");
  Movie m3 = Movie("Movie 3", "Studio B", "R");
  Movie m4 = Movie("Movie 4", "Studio C");

  // Create List of Movies
  List<Movie> movies = [m1, m2, m3, m4];

  // Test getPG
  List<Movie> pgMovies = Movie.getPG(movies);

  for (int i = 0; i < pgMovies.length; i++) {
    print("Title: ${pgMovies[i].title}");
    print("Studio: ${pgMovies[i].studio}");
    print("Rating: ${pgMovies[i].rating}");
    print("----------");
  }
}