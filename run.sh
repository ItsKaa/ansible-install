#!/bin/bash
if [ ! -d ".venv" ]; then
  python -m venv .venv
  source .venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
  deactivate
fi

source .venv/bin/activate
pip install -r requirements.txt # temporary
ansible-playbook site.yml
deactivate