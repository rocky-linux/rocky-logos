NAME = redhat-logos
XML = backgrounds/desktop-backgrounds-default.xml

all: update-po

update-po:
	@echo "updating pot files..."
	sed -e "s/_name/name/g" $(XML).in > $(XML)
	# FIXME need to handle translations
	#
	#( cd po && intltool-update --gettext-package=$(NAME) --pot )
	#@echo "merging existing po files to xml..."
	#intltool-merge -x po $(XML).in $(XML)
