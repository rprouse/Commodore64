RM_BINARY=rm
RM_FLAGS=-rf
MKDIR_BINARY=mkdir
MKDIR_FLAGS=-p

PETCAT=petcat

BUILD_FOLDER=bin

DIRS = 01AceyDucey \
       02Amazing \
       03Animal \
       04Awari \
       05Bagels \
       06Banner \
       07Basketball \
       08Batnum \
       09Battle \
       10Blackjack \
       11Bombardment \
       12BombsAway \
       13Bounce \
       14Bowling \
       15Boxing \
       16Bug \
       17Bullfight \
       18Bullseye \
       19Bunny \
       20Buzzword \
       21Calendar \
       22Change \
       23Checkers \
       24Chemist \
       25Chief \
       26Chomp \
       27CivilWar \
       28Combat \
       29Craps \
       30Cube \
       31DepthCharge \
       32Diamond \
       33Dice \
       34Digits \
       35EvenWins \
       36FlipFlop \
       37Football \
       38FurTrader \
       39Golf \
       40Gomoko \
       41Guess \
       42Gunner \
       43Hammurabi \
       44Hangman \
       45Hello \
       46Hexapawn \
       47Hi-Lo \
       48HighIQ \
       49Hockey \
       50Horserace \
       51Hurkle \
       52Kinema \
       53King \
       54Letter \
       55Life \
       56LifeforTwo \
       57LiteratureQuiz \
       58Love \
       59LunarLEMRocket \
       60Mastermind \
       61MathDice \
       62Mugwump \
       63Name \
       64Nicomachus \
       65Nim \
       66Number \
       67OneCheck \
       68Orbit \
       69Pizza \
       70Poetry \
       71Poker \
       72Queen \
       73Reverse \
       74RockScissorsPaper \
       75Roulette \
       76RussianRoulette \
       77Salvo \
       78SineWave \
       79Slalom \
       80Slots \
       81Splat \
       82Stars \
       83StockMarket \
       84SuperStarTrek \
       85Synonym \
       86Target \
       873-DPlot \
       883-DTic-Tac-Toe \
       89Tic-Tac-Toe \
       90Tower \
       91Train \
       92Trap \
       9323Matches \
       94War \
       95Weekday \
       96Word

$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

$(BUILD_FOLDER)/%.prg: %
	$(PETCAT) -v -w2 -f -o $(@) -- $</*.bas

PRGS=$(DIRS:%=$(BUILD_FOLDER)/%.prg)

all: $(PRGS) $(BUILD_FOLDER)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)