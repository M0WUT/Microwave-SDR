APP = adau1361-cpp

# Add any other object files to this list below
APP_OBJS = adau1361-cpp.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CXX) -o $@ $(APP_OBJS) $(LDFLAGS) $(LDLIBS)
clean:
	rm -f $(APP) *.o
