root := ${HOME}/.design
photoshop := ${HOME}/Library/Application Support/Adobe/Adobe Photoshop CC 2015.5

all:
	rm -rf "${photoshop}/Presets"
	ln -s "${root}/Photoshop/Presets" "${photoshop}"

.PHONY: all
