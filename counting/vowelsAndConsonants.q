str : "This is the string to check the vowels and consonants.";
vowels:"aeiouAEIOU";
vowelCount :count where str in vowels
consonantCount: count where  not str  in vowels
show (`Vowel_Count;vowelCount)
show (`Consonant_Count; consonantCount)
exit 1