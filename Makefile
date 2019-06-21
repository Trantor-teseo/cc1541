cc1541: cc1541.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -std=c99 $(CFLAGS) -c $<

clean:
	rm -rf *.o cc1541 *~
	$(MAKE) -C test_cc1541/ clean
