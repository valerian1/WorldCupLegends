//
//  QuizLevels.swift
//  World Cup Legends
//
//  Created by VLR on 23/09/22.
//

import Foundation

struct QuizLevels {
    let level1 = [
        Question(id: UUID(), q: "How many times Maradona won the World Cup?", img: "Maradona", a: "1", pa1: "0", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "When Zinedine Zidane won the World Cup?", img: "Zidane", a: "In 1998", pa1: "In 2002", pa2: "In 1996", pa3: "In 2006"),
        Question(id: UUID(), q: "How many times Brazil won the World Cup?", img: "Brazil", a: "5", pa1: "7", pa2: "3", pa3: "2"),
        Question(id: UUID(), q: "How many goals did Ronaldo scored in the final in 2002 against Germany?", img: "Ronaldo", a: "2", pa1: "1", pa2: "3", pa3: "4"),
        Question(id: UUID(), q: "Guess the goalkeeper?", img: "Barthez", a: "Barthez", pa1: "Buffon", pa2: "Casillas", pa3: "Seaman"),
        Question(id: UUID(), q: "What is the nickname of the national team of Italy?", img: "Italy", a: "Azzurri", pa1: "Neri", pa2: "Bianchi", pa3: "Nerazzurri"),
        Question(id: UUID(), q: "Who won the Best Young Player Award in 2018?", img: "bestYoungPlayer", a: "Mbappe", pa1: "Griezmann", pa2: "Modric", pa3: "Hazard"),
        Question(id: UUID(), q: "Guess the player?", img: "Owen", a: "Owen", pa1: "Shearer", pa2: "Gerrard", pa3: "Hargreaves"),
        Question(id: UUID(), q: "At what position Antoine Griezmann plays?", img: "Griezmann", a: "Striker", pa1: "Defender", pa2: "Goalkeeper", pa3: "Midfielder"),
        
        Question(id: UUID(), q: "This feared attacking combo was called?", img: "Ro-Ro", a: "Ro-Ro", pa1: "RR Attack", pa2: "R11R9", pa3: "RR Duo"),
        Question(id: UUID(), q: "What was Cruyff's favorite and iconic jersey number that he wore since October 1970?", img: "Cruyff", a: "14", pa1: "10", pa2: "13", pa3: "23"),
        Question(id: UUID(), q: "What is called the stadium where England won the World Cup in 1966?", img: "EnglandWembley", a: "Wembley", pa1: "Old Trafford", pa2: "Anfield", pa3: "Twickenham"),
        Question(id: UUID(), q: "When Sir Bobby Charlton won the World Cup?", img: "SirBobbyCharlton", a: "In 1966", pa1: "In 1970", pa2: "In 1962", pa3: "In 1958"),
        Question(id: UUID(), q: "Guess the player?", img: "Suker", a: "Suker", pa1: "Modric", pa2: "Kovac", pa3: "Boban"),
        Question(id: UUID(), q: "Guess the player, which is multiple Ballon d'Or winner and is smoking in the locker room?", img: "CruyffCigarette", a: "Cruyff", pa1: "Bergkamp", pa2: "De Boer", pa3: "Koeman"),
    ].shuffled()
    
    let level2 = [
        Question(id: UUID(), q: "How many times Pele won the World Cup?", img: "Pele", a: "3", pa1: "1", pa2: "4", pa3: "2"),
        Question(id: UUID(), q: "When Ronaldinho won the World Cup?", img: "Ronaldinho", a: "In 2002", pa1: "In 2006", pa2: "In 1998", pa3: "In 2010"),
        Question(id: UUID(), q: "The only goalkeeper to have ever won the ‘Golden Ball’ trophy?", img: "goldenball", a: "Oliver Kahn", pa1: "Bartez", pa2: "Buffon", pa3: "Casillas"),
        Question(id: UUID(), q: "Which team won the tournament under the guidance of a foreign coach?", img: "cup", a: "Not any", pa1: "Spain", pa2: "England", pa3: "Germany"),
        Question(id: UUID(), q: "Which country outside Europe and South America has won this tournament?", img: "cup", a: "Not any", pa1: "South Africa", pa2: "Japan", pa3: "Australia"),
        Question(id: UUID(), q: "In the list of highest goal scorers of all time Ronaldo stands?", img: "Ronaldo", a: "2nd", pa1: "1st", pa2: "3rd", pa3: "4th"),
        Question(id: UUID(), q: "This goal scored by Maradona is known as The hand of …?", img: "manoDeDios", a: "God", pa1: "Diego", pa2: "Champion", pa3: "Genius"),
        Question(id: UUID(), q: "Who is youngest world champion (player)?", img: "cup3", a: "Pele", pa1: "Henry", pa2: "Mbappe", pa3: "Bergomi"),
        Question(id: UUID(), q: "Who is the only player to score hat-tricks in two different World Cup tournaments?", img: "goalImage3", a: "Batistuta", pa1: "Maradona", pa2: "Matthäus", pa3: "Shearer"),
        Question(id: UUID(), q: "In 2010, which country became the first African nation to host the FIFA World Cup?", img: "southAfrica", a: "South Africa", pa1: "Nigeria", pa2: "Cameroon", pa3: "Egypt"),
        Question(id: UUID(), q: "What is the symbol of the national team of France?", img: "France", a: "Rooster", pa1: "Chicken", pa2: "Bear", pa3: "Fox"),
        Question(id: UUID(), q: "Who missed the decisive penalty for Italy against Brazil in 1994?", img: "penalty1994", a: "Baggio", pa1: "Baresi", pa2: "Albertini", pa3: "Massaro"),
        Question(id: UUID(), q: "Guess the player?", img: "Garrincha", a: "Garrincha", pa1: "Romario", pa2: "Zico", pa3: "Bebeto"),
        Question(id: UUID(), q: "When did Italy win the World Cup for the third time?", img: "Italy2002", a: "In 1982", pa1: "In 2006", pa2: "In 1938", pa3: "In 1994"),
        Question(id: UUID(), q: "When Romario won the World Cup with Brazil?", img: "Romario", a: "In 1994", pa1: "In 1998", pa2: "In 1990", pa3: "In 1986"),
    ].shuffled()
    
    let level3 = [
        Question(id: UUID(), q: "Which team has played the most World Cup games as compared to any other country?", img: "WC1930", a: "Germany", pa1: "Brazil", pa2: "England", pa3: "Uruguay"),
        Question(id: UUID(), q: "Which one is the only team to have played in each and every FIFA World Cup?", img: "WC1930", a: "Brazil", pa1: "Germany", pa2: "Spain", pa3: "Argentina"),
        Question(id: UUID(), q: "The first World Cup held in 1930 was won by?", img: "WC1930", a: "Uruguay", pa1: "Brazil", pa2: "England", pa3: "Argentina"),
        Question(id: UUID(), q: "The youngest player to score a World Cup goal is?", img: "goalImage2", a: "Pele", pa1: "Maradona", pa2: "Fabregas", pa3: "Messi"),
        Question(id: UUID(), q: "Germany’s Miroslav Klose has scored the most goals in World Cups. How many goals?", img: "Klose", a: "16", pa1: "15", pa2: "19", pa3: "18"),
        Question(id: UUID(), q: "The tournament was canceled in 1942 and 1946 because of?", img: "estadioCentenario1930", a: "World War II", pa1: "Influenza", pa2: "Volcano", pa3: "Earthquake"),
        Question(id: UUID(), q: "Which team has scored the most goals at all World Cup games put together; 224 in all?", img: "goalImage2", a: "Brazil", pa1: "Germany", pa2: "Spain", pa3: "Nigeria"),
        Question(id: UUID(), q: "Brazil has scored the most goals at all World Cup games, how many goals?", img: "Neymar", a: "224", pa1: "222", pa2: "240", pa3: "242"),
        Question(id: UUID(), q: "Because of World War II, Germany and Japan were not allowed to take part in the World Cup in?", img: "WC1950", a: "1950", pa1: "1942", pa2: "1946", pa3: "1954"),
        Question(id: UUID(), q: "Which team has lost the most games at World Cups?", img: "goalRevieve", a: "Mexico", pa1: "Nigeria", pa2: "Venezuela", pa3: "Portugal"),
        Question(id: UUID(), q: "Who scored the fastest goal in just 11 seconds in the 2002 tournament?", img: "WC2002ball", a: "Sükür", pa1: "Ronaldo", pa2: "Owen", pa3: "Bierhoff"),
        Question(id: UUID(), q: "When was scored first golden goal by Laurent Blanc?", img: "Blanc", a: "In 1998", pa1: "In 1994", pa2: "In 2002", pa3: "In 1990"),
        Question(id: UUID(), q: "Who was the oldest player to score a World Cup goal?", img: "goalImage2", a: "Roger Milla", pa1: "Maldini", pa2: "Zidane", pa3: "Platini"),
        Question(id: UUID(), q: "How many goals Gerd Muller scored in the 1970 World Cup which was held in Mexico?", img: "GerdMuller", a: "10", pa1: "7", pa2: "5", pa3: "12"),
        Question(id: UUID(), q: "Guess the year?", img: "muller-trophy", a: "1974", pa1: "1966", pa2: "1970", pa3: "1978"),
    ].shuffled()
    
    let level4 = [
        Question(id: UUID(), q: "The 1994 edition in USA was the first time when 3 points was awarded for a win, instead of?", img: "USA94", a: "2", pa1: "1", pa2: "6", pa3: "5"),
        Question(id: UUID(), q: "Which team scored most goals and defeated El Salvador 10 – 1 in 1982?", img: "Spain82", a: "Hungary", pa1: "Netherlands", pa2: "Italy", pa3: "Germany"),
        Question(id: UUID(), q: "Geoff Hurst of England is the only player to have scored a hat-trick in the final in 1966 against?", img: "hurst", a: "Germany", pa1: "Argentina", pa2: "Spain", pa3: "France"),
        Question(id: UUID(), q: "The World Cup trophy went missing for 7 days at the start of the tournament in?", img: "cup", a: "1966", pa1: "1970", pa2: "1994", pa3: "1986"),
        Question(id: UUID(), q: "Only 2 countries have defended their titles successfully, Brazil and?", img: "Brazil-world-cup", a: "Italy", pa1: "France", pa2: "Germany", pa3: "Uruguay"),
        Question(id: UUID(), q: "When was the first penalty shootout in the tournament held in Spain, when West Germany beat France 5 – 4 in the semi-finals?", img: "WestGermanyFrance1982", a: "In 1982", pa1: "In 1986", pa2: "In 1998", pa3: "In 1990"),
        Question(id: UUID(), q: "How many national teams have won the trophy?", img: "cup3", a: "8", pa1: "14", pa2: "13", pa3: "9"),
        Question(id: UUID(), q: "Which country won the world cup last time as the host?", img: "cup", a: "Italy", pa1: "Uruguay", pa2: "Brazil", pa3: "England"),
        Question(id: UUID(), q: "In 2010 Spain won in extra time and become the world champion, who scored the decisive goal?", img: "Spain2010", a: "Iniesta", pa1: "David Villa", pa2: "Xavi", pa3: "Ramos"),
        Question(id: UUID(), q: "How many times has Italy won the world cup?", img: "Italy", a: "4", pa1: "3", pa2: "2", pa3: "5"),
        Question(id: UUID(), q: "Which of these countries has not won the world cup?", img: "cup", a: "Portugal", pa1: "Uruguay", pa2: "England", pa3: "Argentina"),
        Question(id: UUID(), q: "What is the country with the smallest population to ever compete in the world cup?", img: "cup3", a: "Iceland", pa1: "Japan", pa2: "Switzerland", pa3: "Scotland"),
        Question(id: UUID(), q: "Which national team is nicknamed ‘the socceroos’?", img: "cup3", a: "Australia", pa1: "USA", pa2: "Scotland", pa3: "Canada"),
        Question(id: UUID(), q: "How many lions are on the emblem of England’s national team?", img: "England2022", a: "Three", pa1: "One", pa2: "Two", pa3: "Eleven"),
        Question(id: UUID(), q: "What country was the first to wear names on the back of their shirts at World Cup Finals??", img: "cup", a: "England", pa1: "Germany", pa2: "France", pa3: "Netherlands"),
    ].shuffled()
    
    let level5 = [
        Question(id: UUID(), q: "Which team has won 71 games at all the finals over the decades, the most by any country?", img: "goalImage2", a: "Brazil", pa1: "Argentina", pa2: "Spain", pa3: "France"),
        Question(id: UUID(), q: "The most red cards (28) in a single tournament were handed out in?", img: "redCard", a: "2006", pa1: "2002", pa2: "1994", pa3: "1990"),
        Question(id: UUID(), q: "The most goals in a game is 12, in the 1954 quarter-final when Austria defeated Switzerland by score?", img: "mostGoals1954", a: "7 : 5", pa1: "8 : 4", pa2: "10 : 2", pa3: "11 : 1"),
        Question(id: UUID(), q: "Who holds the record for the most goals in a single game, who scored 5 against Cameroon in 1994?", img: "goalImage", a: "Oleg Salenko", pa1: "Batistuta", pa2: "Gerd Müller", pa3: "Pele"),
        Question(id: UUID(), q: "When was Croatia first allowed to participate as an independent country?", img: "Croatia", a: "In 1998", pa1: "In 1994", pa2: "In 1990", pa3: "In 1986"),
        Question(id: UUID(), q: "Which player has scored a record 13 goals at one World Cup?", img: "goalImage3", a: "Fontaine", pa1: "Ronaldo", pa2: "Klose", pa3: "Gerd Müller"),
        Question(id: UUID(), q: "How many medals are awarded to each to the Winners, the Runners-up and the Third placed team at a world cup?", img: "FranceMedals", a: "45", pa1: "40", pa2: "52", pa3: "55"),
        Question(id: UUID(), q: "Which country has the most matches played without a win or a draw at the World Cup Finals?", img: "goalRevieve", a: "El Salvador", pa1: "Mexico", pa2: "Cameroon", pa3: "Nigeria"),
        Question(id: UUID(), q: "Which player has played the most minutes at the World Cup Finals?", img: "WC2002ball", a: "Maldini", pa1: "Cafu", pa2: "Mascherano", pa3: "Maradona"),
        Question(id: UUID(), q: "Who is the only European to appear at 5 World Cup Finals?", img: "Final2010", a: "Matthaus", pa1: "Muller", pa2: "Cruyff", pa3: "Maldini"),
        Question(id: UUID(), q: "Which country has lost the World Cup Final the most times?", img: "goalImage", a: "Germany", pa1: "Italy", pa2: "Brazil", pa3: "England"),
        Question(id: UUID(), q: "When Sepp Maier won the Golden Glove?", img: "Maier", a: "In 1974", pa1: "In 1970", pa2: "In 1966", pa3: "In 1978"),
        Question(id: UUID(), q: "Which country has finished in the top two the most times?", img: "Stadium3", a: "Germany", pa1: "Brazil", pa2: "Italy", pa3: "Spain"),
                Question(id: UUID(), q: "Who was the first player to represent two different countries in World Cup history?", img: "WorldCupClassic", a: "Luis Monti", pa1: "Prosinecki", pa2: "Jarni", pa3: "Mazola"),
        Question(id: UUID(), q: "How many World Cups have there been in total since 1930 to 2018?", img: "cup3", a: "21", pa1: "18", pa2: "20", pa3: "24"),
    ].shuffled()
}
