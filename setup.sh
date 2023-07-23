echo "Checking installed python modules:"
MODULES=$(conda list)
MODULES_TO_INSTALL="tqdm torch torchvision"
for MODULE in $MODULES_TO_INSTALL
do
  if [[ $MODULES == *$MODULE* ]]; then
    echo "OK $MODULE is allready installed on conda"
  else
    echo "Installing $MODULE"
    pip install $MODULE
  fi
done