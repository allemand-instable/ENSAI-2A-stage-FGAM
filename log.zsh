#!/bin/zsh

if (( $# == 0 )); then
  echo "Usage: $0 [--error] [--warning] [--info] [--help]"
  exit 0
fi

# Parse command line arguments
while (( $# )); do
  case "$1" in
    -e|--error)
      pattern="\!"
      batgrep --color -i -B 0 -A 12 "${pattern}" "aux_files/rapport.log"
      shift
      ;;
    -w|--warning)
      # Replace with the command for --warning
      echo "Warning"
      pattern="Warning:"
      batgrep --color -B 0 -A 12 "${pattern}" "aux_files/rapport.log"
      shift
      ;;
    -i|--info)
      # Replace with the command for --info
      echo "Info"
      pattern="Info:"
      batgrep --color -B 0 -A 12 "${pattern}" "aux_files/rapport.log"
      shift
      ;;
    -h|--help)
      echo "Usage: $0 [--error] [--warning] [--info] [--help]"
      exit 0
      ;;
    *)
      echo "Unknown argument: $1"
      echo "Usage: $0 [--error] [--warning] [--info] [--help]"
      exit 1
      ;;
  esac
done