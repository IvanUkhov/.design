photoshop := ${HOME}/Library/Application Support/Adobe/Adobe Photoshop CC 2017

all:
	rm -rf "${photoshop}/Presets"
	ln -s "${PWD}/Photoshop/Presets" "${photoshop}"
