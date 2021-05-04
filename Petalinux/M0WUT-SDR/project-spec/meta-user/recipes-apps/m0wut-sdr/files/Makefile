APP = m0wut-sdr

# Add any other object files to this list below
APP_OBJS = m0wut-sdr.o
APP_OBJS += adau1361_input_channel.o
APP_OBJS += adau1361_output_channel.o
APP_OBJS += adau1361_pll.o
APP_OBJS += adau1361.o
APP_OBJS += audio_handler.o
APP_OBJS += iic.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CXX) -o $@ $(APP_OBJS) $(LDFLAGS) $(LDLIBS)
clean:
	rm -f $(APP) *.o
