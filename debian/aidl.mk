NAME = aidl
SOURCES = main_java.cpp
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -L. -laidl-common

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)