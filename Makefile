# Makefile

CC       := g++        # Main Compiler
SRCDIR   := src        # Source File Directory
BUILDDIR := build      # Build File Directory
TARGET   := bin/Boxes  # Final Executable

SRCEXT   := cpp        # Source File Type?
SOURCES  := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJECTS  := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%, $(SOURCES:.$(SRCEXT)=.o ) )
CFLAGS   := -g -Wall
#LIB     :=            # Libraries - Currently None!  And will stay that way!
                       # Boxes don't need no help from anybody!
INC      := -I include

$(TARGET): $(OBJECTS)
  @echo "  Linking..."
  @echo "  $(CC) $^ -o $(TARGET) $(LIB)"; $(CC) $^ -o $(TARGET) $(LIB)

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
  @mkdir -p $(BUILDDIR)
  @echo "  $(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
  @echo "  Cleaning..."
  @echo "  $(RM) -r $(BUILDDIR) $(TARGET)"; $(RM) -r $(BUILDDIR) $(TARGET)

# Tests

.PHONY: clean


