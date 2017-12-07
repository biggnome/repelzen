# this flag selects the rack version to compile against.
# 
# possible values are v040 v_050_dev

# FLAGS += -D v040
FLAGS += -D v_050_dev

SOURCES = $(wildcard src/*.cpp)

include ../../plugin.mk

dist: all
	mkdir -p dist/aepelzen
	cp LICENSE* dist/aepelzen/
	cp plugin.* dist/aepelzen/
	cp -R res dist/aepelzen/
