#
#  Willie Boag      wboag@cs.uml.edu
#
#  CliNER - install_python_dependencies.sh
#


# Installation log
DEPENDENCIES_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
log="$DEPENDENCIES_DIR/log_installation.txt"
echo "" > $log

echo -e "\nSee python dependency details at: \n\t$DEPENDENCIES_DIR/log_installation.txt\n"


# Install python dependencies
pip install -r $DEPENDENCIES_DIR/../../requirements.txt &>> $log


# Install nltk data
echo "downloading nltk data"
python -m nltk.downloader maxent_treebank_pos_tagger wordnet punkt &>> $log
echo -e "nltk download complete\n"

