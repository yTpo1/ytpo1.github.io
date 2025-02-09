# Naming (Meaningful Names)

### Use Intention-Revealing Names
The name of a variable, function, or class, should answer all the big questions. It should tell you why it exists, what it does, and how it is used. If a name requires a comment, then the name does not reveal its intent.
```cs
int d; // elapsed time in days
```

The name d reveals nothing. It does not evoke a sense of elapsed time, nor of days. We should choose a name that specifies what is being measured and the unit of that measurement:
```cs
int elapsedTimeInDays;
int daysSinceCreation;
int daysSinceModification;
int fileAgeInDays;
```

Bad example:
```cs
public List<int[]> getThem() {
    List<int[]> list1 = new ArrayList<int[]>();
    for (int[] x : theList)
        if (x[0] == 4)
            list1.add(x);
    return list1;
}
```

Good example:
```cs
public List<int[]> getFlaggedCells() {
    List<int[]> flaggedCells = new ArrayList<int[]>();
    for (int[] cell : gameBoard)
        if (cell[STATUS_VALUE] == FLAGGED)
            flaggedCells.add(cell);
    return flaggedCells;
}
```

We can go further and write a simple class for cells instead of using an array of ints. It can include an intention-revealing function (call it isFlagged) to hide the magic numbers. It results in a new version of the function:
```cs
public List<Cell> getFlaggedCells() {
    List<Cell> flaggedCells = new ArrayList<Cell>();
    for (Cell cell : gameBoard)
        if (cell.isFlagged())
            flaggedCells.add(cell);
    return flaggedCells;
}
```

### Avoid Disinformation
Do not refer to a grouping of accounts as an accountList unless it’s actually a List. The word list means something specific to programmers. If the container holding the accounts is not actually a List, it may lead to false conclusions.1 So accountGroup or bunchOfAccounts or just plain accounts would be better.

### Make Meaningful Distinctions
Number-series naming (a1, a2, .. aN) is the opposite of intentional naming. Such
names are not disinformative—they are noninformative; they provide no clue to the
author’s intention. Consider:
```cs
public static void copyChars(char a1[], char a2[]) {
    for (int i = 0; i < a1.length; i++) {
        a2[i] = a1[i];
}
}
```

This function reads much better when source and destination are used for the argument
names.

Don't differentiate between similar variables with prefixes or words that mean the same thing:
```cs
var money;
var theMoney;

// Or
var ProductInfo;
var ProductData;

// Or
getActiveAccount();
getActiveAccounts();
getActiveAccountInfo();
```

### Use Pronounceable Names


```cs
class DtaRcrd102 {
private Date genymdhms;
private Date modymdhms;
private final String pszqint = "102";
/* ... */
};

// VS

class Customer {
private Date generationTimestamp;
private Date modificationTimestamp;;
private final String recordId = "102";
/* ... */
};
```

### Don't include the type in the name
```cs
PhoneNumber phoneString;
// name not changed when type changed!
```

### Don't use single-letter variable names.
Certainly a loop counter may be named i or j or k (though never l!) if its scope is very small and no other names can conflict with it. This is because those single-letter names for loop counters are traditional. However, in most other contexts a single-letter name is a poor choice; it’s just a place holder that the reader must mentally map to the actual concept. There can be no worse reason for using the name c than because a and b were already taken.

### Class Names
Classes and objects should have noun or noun phrase names like Customer, WikiPage,
Account, and AddressParser. Avoid words like Manager, Processor, Data, or Info in the name
of a class. A class name should not be a verb.

### Method Names
Methods should have verb or verb phrase names like postPayment, deletePage, or save. Accessors, mutators, and predicates should be named for their value and prefixed with get, set, and is according to the javabean standard.
```java
string name = employee.getName();
customer.setName("mike");
if (paycheck.isPosted())...
```

### Choose clarity.
Smart programmer VS A professional programmer
One difference between a smart programmer and a professional programmer is that the professional understands that clarity is king. Professionals use their powers for good and write code that others can understand.

Choose clarity over entertainment value.

Our goal, as authors, is to make our code as easy as possible to understand. We want
our code to be a quick skim, not an intense study. 

# Source
* Robert Martin - Clean Code - A Handbook of Agile Software Craftsmanship - 2008. Chapter 2: Meaningful Names