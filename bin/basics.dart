//Q1/////

void main() {
  List<int> arr = [8, 0, 1, 5];

  print(getMin(arr));
}

int getMin(List<int> arr) {
  int min = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
  }

  return min;
}
////////////////////////
//Q2//

void main() {
  List<int> arr = [1, 9, 0, 5, 4, 2];

  print(getSecondSmallest(arr));
}

int getSecondSmallest(List<int> arr) {
  int smallest = arr[0];
  int secondSmallest = arr[1];

  if (secondSmallest < smallest) {
    int temp = smallest;
    smallest = secondSmallest;
    secondSmallest = temp;
  }

  for (int i = 2; i < arr.length; i++) {
    if (arr[i] < smallest) {
      secondSmallest = smallest;
      smallest = arr[i];
    } else if (arr[i] < secondSmallest && arr[i] != smallest) {
      secondSmallest = arr[i];
    }
  }

  return secondSmallest;
}
//////////////////////////////////////////////////
//Q3

void main() {
  List<int> arr = [8, 0, 1, 5];
  int target = 1;

  containsValue(arr, target);
}

void containsValue(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      print("Yes");
      return;
    }
  }

  print("No");
}
////////////////////////////////////////////////////
//Q4

void main() {
  List<int> arr = [1, 4, 2, 5, -1, 8];

  print(CalculateEven(arr));
}

int CalculateEven(List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      sum += arr[i];
    }
  }

  return sum;
}
/////////////////////////////////////////////////////
//Q5

void main() {
  List<int> scores = [40, 55, 70, 58];

  assignGrades(scores);
}

void assignGrades(List<int> scores) {
  int bestScore = scores[0];

  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > bestScore) {
      bestScore = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    String grade;

    if (scores[i] >= bestScore - 10) {
      grade = "A";
    } else if (scores[i] >= bestScore - 20) {
      grade = "B";
    } else if (scores[i] >= bestScore - 30) {
      grade = "C";
    } else if (scores[i] >= bestScore - 40) {
      grade = "D";
    } else {
      grade = "F";
    }

    print("Student ${i + 1} score is ${scores[i]} and grade is $grade");
  }
}
//////////////////////////////////////////////////////////////////////
//Q6

void main() {
  List<int> scores = [8, 5, 1, 3];

  analyzeScores(scores);
}

void analyzeScores(List<int> scores) {
  int sum = 0;

  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;

  int above = 0;
  int below = 0;
  int equal = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > average) {
      above++;
    } else if (scores[i] < average) {
      below++;
    } else {
      equal++;
    }
  }

  print("Above average: $above");
  print("Below average: $below");
  print("Equal average: $equal");
}
/////////////////////////////////////////////////////////////////////
//Q7
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  reverseArray(arr);
}

void reverseArray(List<int> arr) {
  for (int i = arr.length - 1; i >= 0; i--) {
    print(arr[i]);
  }
}
/////////////////////////////////////////////////////////////////////////
//Q8

void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2];

  getDistinctNumbers(numbers);
}

void getDistinctNumbers(List<int> arr) {
  List<int> distinct = [];

  for (int i = 0; i < arr.length; i++) {
    if (!distinct.contains(arr[i])) {
      distinct.add(arr[i]);
    }
  }

  print("The number of distinct number is ${distinct.length}");

  print("The distinct numbers are: ${distinct.join(' ')}");
}
////////////////////////////////////////////////////////////////
//Q9

void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];

  CountGeneral(numbers);
}

void CountGeneral(List<int> arr) {
  List<int> counted = [];

  for (int i = 0; i < arr.length; i++) {
    if (!counted.contains(arr[i])) {
      int count = 0;

      for (int j = 0; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          count++;
        }
      }

      print("${arr[i]}->$count");
      counted.add(arr[i]);
    }
  }
}
//////////////////////////////////////////////////////////////////////
//Q10

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];

  SelectionSort(numbers);

  print(numbers);
}

void SelectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
}