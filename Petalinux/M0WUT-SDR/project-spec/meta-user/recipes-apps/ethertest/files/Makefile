APP = ethertest

# Add any other object files to this list below
APP_OBJS = ethertest.o
LDFLAGS += -lm

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) -o $@ $(APP_OBJS) $(LDFLAGS) $(LDLIBS)
clean:
	rm -f $(APP) *.o

