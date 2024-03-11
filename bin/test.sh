#!/usr/bin/env bash


usage() {
  echo 'usage: $(basename $0) [-h|--help] [-L|--loop]'
  echo
  echo '  OPTIONS:'
  echo
  echo '  -h|--help show this help text'
  echo '  -L|--loop    run the test over and over'
}

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -h|--help)
    # show usage and bail
    usage
    exit
    ;;
    -L|--loop)
    LOOP=1
    shift # past argument
    ;;
    *)
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac

done
set -- "${POSITIONAL[@]}" # restore positional parameters


main() {
  if [[ $LOOP ]] ; then
    while true; do
      npx playwright test --reporter=dot
    done
  else
    npx playwright test --reporter=dot
  fi
}


main
