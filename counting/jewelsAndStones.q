/Task
/Count how many characters in stones appear in jewels (distinct)
countStones:{[jewels;stones]
     :count jewels where stones in jewels;}

countStones["AAcdA";"aA"]
countStones["124Adef";"2Aef"]