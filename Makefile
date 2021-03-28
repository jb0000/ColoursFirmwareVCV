FLAGS += \
	-DTEST \
	-I./eurorack \
	-Wno-unused-local-typedefs

SOURCES += $(wildcard src/*.cpp)

SOURCES += eurorack/stmlib/utils/random.cc
SOURCES += eurorack/stmlib/dsp/atan.cc
SOURCES += eurorack/stmlib/dsp/units.cc

SOURCES += $(wildcard eurorack/plaits/dsp/*.cc)
SOURCES += $(wildcard eurorack/plaits/dsp/engine/*.cc)
SOURCES += $(wildcard eurorack/plaits/dsp/speech/*.cc)
SOURCES += $(wildcard eurorack/plaits/dsp/physical_modelling/*.cc)
SOURCES += eurorack/plaits/resources.cc


SOURCES += eurorack/stmlib/utils/random.cc
SOURCES += eurorack/stmlib/dsp/atan.cc
SOURCES += eurorack/stmlib/dsp/units.cc


DISTRIBUTABLES += $(wildcard LICENSE*) res

RACK_DIR ?= ../..
include $(RACK_DIR)/plugin.mk
