MINICONDA_URL="http://repo.continuum.io/miniconda"
MINICONDA_FILE="Miniconda-3.8.3-MacOSX-x86_64.sh"
wget "${MINICONDA_URL}/${MINICONDA_FILE}"
bash $MINICONDA_FILE -b

export PATH=/Users/travis/miniconda/bin:$PATH

conda update --yes conda
conda install --yes conda-build jinja2 anaconda-client

# remove Homebrew libjpeg or else librsl links against it.
brew uninstall jpeg --force
