#!/usr/bin/env bash
jq -s '{quiz: .}' quizzes/*.json > prompts/quiz-master.json
