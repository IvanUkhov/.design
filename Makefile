illustrator := ${HOME}/Library/Application Support/Adobe/Adobe Illustrator 22/en_US
illustrator_names := $(patsubst Illustrator/%/,%,$(dir $(wildcard Illustrator/*/)))

photoshop := ${HOME}/Library/Application Support/Adobe/Adobe Photoshop CC 2019/Presets
photoshop_names := $(patsubst Photoshop/%/,%,$(dir $(wildcard Photoshop/*/)))

all:
	for name in ${illustrator_names}; do \
		rm -ri "${illustrator}/$${name}"; \
		ln -s "${PWD}/Illustrator/$${name}" "${illustrator}"; \
	done
	for name in ${photoshop_names}; do \
		rm -ri "${photoshop}/$${name}"; \
		ln -s "${PWD}/Photoshop/$${name}" "${photoshop}"; \
	done
