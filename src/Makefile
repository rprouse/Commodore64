MAKE=make
MAKECMDGOALS=

default:
	$(MAKE) -C alp $(MAKECMDGOALS)
	$(MAKE) -C asm $(MAKECMDGOALS)
	$(MAKE) -C asm_tools $(MAKECMDGOALS)
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS)
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS)
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS)

all: basic-computer-games more-basic-computer-games
	$(MAKE) -C alp $(MAKECMDGOALS) all
	$(MAKE) -C asm $(MAKECMDGOALS) all
	$(MAKE) -C asm_tools $(MAKECMDGOALS) all
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS) all
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS) all
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS) all

clean:
	$(MAKE) -C alp $(MAKECMDGOALS) clean
	$(MAKE) -C asm $(MAKECMDGOALS) clean
	$(MAKE) -C asm_tools $(MAKECMDGOALS) clean
	$(MAKE) -C retro_game_dev $(MAKECMDGOALS) clean
	$(MAKE) -C basic-computer-games $(MAKECMDGOALS) clean
	$(MAKE) -C more-basic-computer-games $(MAKECMDGOALS) clean
