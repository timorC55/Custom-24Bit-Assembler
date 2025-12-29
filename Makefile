FILES_SOURCE = src/step_two.c src/step_one.c src/helpers.c src/entry.c src/label.c

all: $(FILES_SOURCE)
	gcc -g -Wall -ansi -pedantic -I include -o assembler $(FILES_SOURCE)

clean:
	rm -f assembler *.ent *.ext *.ob *.am