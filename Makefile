OBJS = src/ubg_main.o \
       src/ubg_match.o \
       src/ubg_ref.o \
       src/ubg_render.o \
       src/intset.o \
       src/strutil.o \
       data/ubg_data.o
CFLAGS += -Wall -Isrc/
LDLIBS += -lreadline

ubg: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LDLIBS)

src/ubg_main.o: src/ubg_main.c src/ubg_config.h src/ubg_data.h src/ubg_match.h src/ubg_ref.h src/ubg_render.h src/strutil.h

src/ubg_match.o: src/ubg_match.h src/ubg_match.c src/ubg_config.h src/ubg_data.h src/ubg_ref.h

src/ubg_ref.o: src/ubg_ref.h src/ubg_ref.c src/intset.h src/ubg_data.h

src/ubg_render.o: src/ubg_render.h src/ubg_render.c src/ubg_config.h src/ubg_data.h src/ubg_match.h src/ubg_ref.h

src/insetset.o: src/intset.h src/insetset.c

src/strutil.o: src/strutil.h src/strutil.c

data/ubg_data.o: src/ubg_data.h data/ubg_data.c

data/ubg_data.c: data/ubg.tsv data/generate.awk src/ubg_data.h
	awk -f data/generate.awk $< > $@

.PHONY: clean
clean:
	rm -rf $(OBJS) ubg
