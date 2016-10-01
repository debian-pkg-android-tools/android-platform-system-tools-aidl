NAME = libaidl-common
SOURCES = aidl.cpp \
          aidl_language.cpp \
          aidl_language_l.cpp \
          aidl_language_y.cpp \
          ast_cpp.cpp \
          ast_java.cpp \
          code_writer.cpp \
          generate_cpp.cpp \
          generate_java.cpp \
          generate_java_binder.cpp \
          import_resolver.cpp \
          line_reader.cpp \
          io_delegate.cpp \
          options.cpp \
          type_cpp.cpp \
          type_java.cpp \
          type_namespace.cpp
LDFLAGS += -shared -Wl,-soname,$(NAME).so.0 \
           -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -L/usr/lib/$(DEB_HOST_MULTIARCH)/android -lbase

build: $(SOURCES)
	$(CXX) $^ -o $(NAME).so.0 $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)
	ln -s $(NAME).so.0 $(NAME).so

clean:
	$(RM) $(NAME).so* aidl_language_l.cpp aidl_language_y.cpp

aidl_language_l.cpp: aidl_language_l.ll aidl_language_y.cpp
	flex -o $@ $<

aidl_language_y.cpp: aidl_language_y.yy
	bison --defines=aidl_language_y.h -o $@ $^