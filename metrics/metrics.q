//METRICS
//array length
count arr: ("Check";`the;"length";`here;1);

//String length
//find the character and byte length of a string
//Note: string length and byte length differ

//string length using count
count charStr:("This is to check the character length of a string");
count symStr:(`hello);
//byte length
-22!charStr;

//Copy a string
//use deep copy not referencing
//using deep copy - raze creates a new string by flattening
a:"hello"
b:raze enlist a;
b:"world";
a;

//Empty Strings
//Languages may have features for dealing specifically with empty strings (those containing no characters).

/Task
/  Demonstrate how to assign an empty string to a variable.
/  Demonstrate how to check that a string is empty.
/  Demonstrate how to check that a string is not empty.

//assign empty string to a variable
emptyStr:"";
count emptyStr=0;  //gives 0
not count emptyStr=0; //1b -true, string not empty


exit 1
