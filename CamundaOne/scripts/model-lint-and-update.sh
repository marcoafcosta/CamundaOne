#!/usr/bin/env bash
for f in examples/*.{bpmn,dmn,cmmn}; do
  case "$f" in
    *.bpmn) camunda-bpmn-lint "$f" --fix ;;
    *.dmn) camunda-dmn-lint "$f" --fix ;;
    *.cmmn) camunda-cmmn-lint "$f" --fix ;;
  esac
done
