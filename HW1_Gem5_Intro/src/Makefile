CC = gcc
OPT = -O3
CFLAGS = $(OPT)

TARGET = mm lfsr merge sieve

all: ${TARGET}

mm: mm.c
	$(CC) -o mm mm.c ${CFLAGS}

lfsr: lfsr.c
	$(CC) -o lfsr lfsr.c ${CFLAGS}

merge: merge.c
	$(CC) -o merge merge.c ${CFLAGS}

sieve: sieve.c
	$(CC) -o sieve sieve.c ${CFLAGS}

clean:
	rm -f ${TARGET}