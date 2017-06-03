photoshop := ${HOME}/Library/Application Support/Adobe/Adobe Photoshop CC 2017/Presets
photoshop_names := $(patsubst Photoshop/%/,%,$(dir $(wildcard Photoshop/*/)))

illustrator := ${HOME}/Library/Application Support/Adobe/Adobe Illustrator 21/en_US
illustrator_names := $(patsubst Illustrator/%/,%,$(dir $(wildcard Illustrator/*/)))

all:
	for name in ${photoshop_names}; do \
		rm -ri "${photoshop}/$${name}"; \
		ln -s "${PWD}/Photoshop/$${name}" "${photoshop}"; \
	done
	for name in ${illustrator_names}; do \
		rm -ri "${illustrator}/$${name}"; \
		ln -s "${PWD}/Illustrator/$${name}" "${illustrator}"; \
	done
