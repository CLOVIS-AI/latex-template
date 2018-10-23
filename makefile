BUILD="./build"
FILES="examples/droit.tex"
FLAGS="--no-print-logs"

pdf:
	@$(BUILD) $(FLAGS) PDF $(FILES)

html:
	@$(BUILD) $(FLAGS) HTML $(FILES)

clean:
	@$(BUILD) $(FLAGS) CLEAN $(FILES)

hardclean:
	@$(BUILD) $(FLAGS) HARDCLEAN $(FILES)

dep:
	@$(BUILD) $(FLAGS) DEP
