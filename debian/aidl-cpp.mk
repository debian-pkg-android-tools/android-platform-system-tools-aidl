NAME = aidl-cpp
SOURCES = main_cpp.cpp
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -L. -laidl-common \
           -L/usr/lib/$(DEB_HOST_MULTIARCH)/android -lbase

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)