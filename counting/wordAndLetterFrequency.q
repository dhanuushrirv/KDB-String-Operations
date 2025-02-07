\c 2000 2000
/read the file content
fileContents : read0 `:/Users/dhanuushri/Documents/Intellij/KDB/KDBPractice/counting/sampleTxt.txt

/concatenates all lines into a single string, with spaces between them.
text: " " sv fileContents;

/replace the special characters(except word space) with empty string(no space)
cleanText: ssr[text; "[^a-zA-Z0-9 ]"; ""]
words : lower each " " vs cleanText;

/remove empty strings and group the word frequency in desc order
show words: desc count each group words where count each words

exit 1
