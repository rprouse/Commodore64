default:
	$(MAKE) -C asm $(MAKECMDGOALS)
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS)
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS)
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS)

all: basic-computer-games more-basic-computer-games
	$(MAKE) -C asm $(MAKECMDGOALS) all
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS) all
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS) all
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS) all

clean:
	$(MAKE) -C asm $(MAKECMDGOALS) clean
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS) clean
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS) clean
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS) clean
