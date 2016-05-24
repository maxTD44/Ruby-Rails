#Yahtzee

This month's Magic Night challenge is to make a program that plays Yahtzee.

###Challenge "Levels":

1. Dice rolling program and display
2. Playable Yahtzee game (see rules below)
3. a) Add a computer AI that takes turns with the player.  The more
      intelligently it plays the better.
	b) Implement alternate versions: one such is Triple Yahtzee.  It's played
	just like normal Yahtzee, except that you fill in three columns of
	categories at once, placing scores in any column you please.  At the end of
	the game, the second column's score is doubled and the third is tripled,
	then all three columns are totaled to create the overall score.  Add support
	for Triple Yahtzee.

**Modified from RUby quiz #19, so don't look at the solution to that.**

####Yahtzee Rules:

The rules of Yahtzee are not complex. On your turn, you roll five dice. If
desired, you make pick up any number of them and re-roll. You're allowed up to
two re-rolls or three total rolls counting the original toss. When you're
finished rolling, you score the roll in any "category" you like.

A game of Yahtzee is 13 turns. Sometimes players play alone to see how good of a
score they can get. Other times, they play against others: High score wins.

Yahtzee has thirteen categories where you can place a score, one for each roll.
The categories are divided into two sections.
The "top" section (located on the top half of the score card) contains:

- Ones,
- Twos,
- Threes,
- Fours,
- Fives
- Sixes

To score in those categories, you simply count the total of all dice
matching the name.

The "bottom" categories are more varied. There is :
- Three of a Kind
- Four of a Kind

To score in either of those you need the indicated three or four of any one
number shown on the dice. As long as you have the needed duplicates, you
score the total of all your dice.

There is a category for a Full House, worth 25 points. This requires two of one
number and three of another to be shown on the dice.

There's also Small Straight and Large Straight. They require a sequence to be
shown on the dice. For example, 2, 3, 4 and 5 can be a Small Straight. The Small
Straight requires a run of at least four dice and is worth 30 points. Large
Straight requires all five dice to be in order and is worth 40 points.

The supreme category is the Yahtzee. This requires a five of a kind roll. All
dice must show the same number. When you have that, you can score 50 points
here.

If you roll more than one Yahtzee in a game, after scoring the first one for 50,
the subsequent Yahtzees give you a 100 bonus point each. You must still count
these Yahtzees somewhere; either in the top for the appropriate number or if
that is full, it can be used as a wildcard for any category in the bottom,
scored normally.

Finally, there's is a catch-all Chance category. You can score any roll here
simply by totaling all the dice.

You must score each and every roll in exactly one category. This means it is
common to "scratch" categories late in the game, when you cannot get the right
combination. A scratch is worth zero points.

When the categories are filled in, the top and bottom are totaled separately. If
the top is greater than or equal to 63 points, you add in a 35 point "bonus".
The two section totals are then combined to give the overall score.




