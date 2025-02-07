\c 2000 2000
//WORD FREQUENCY
/read the file content
fileContents : read0 `:./counting/sampleTxt.txt

/concatenates all lines into a single string, with spaces between them.
text: " " sv fileContents;

/replace the special characters(except word space) with empty string(no space)
cleanText: ssr[text; "[^a-zA-Z0-9 ]"; ""]
words : lower each " " vs cleanText;

/remove empty strings and group the word frequency in desc order
words: desc count each group words where count each words

//LETTER FREQUENCY
/use line num 7 directly instead of flattening again.
/ this will count including special characters and spaces
desc count each group text;

/to count without space and special characters
/remove the space and special characters using ssr
cleanText: ssr[text; "[^a-zA-Z0-9]"; ""]
desc count each group cleanText;

exit 1
