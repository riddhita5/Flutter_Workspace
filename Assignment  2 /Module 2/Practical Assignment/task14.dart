void main()
{
     List<String> word = ["grapes","watermelon","guava","apple","banana"];
    // List<String> word = a.split(" ");

    Set words = Set();
    words.add("grapes");

    words.toSet();

    List<String> c = word.toList();
    // Set<String> b = word.toSet();
    // List<String> c = b.toList();
        c.sort();

    print;("Words in alphabetical order :");
    print(c);
}