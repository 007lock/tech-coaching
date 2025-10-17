SHELL:=/bin/bash
.PHONY: presentation clean install venv

venv:
	/usr/bin/python3 -m venv .venv

install: venv
	source .venv/bin/activate && pip install -r requirements.txt

presentation: slide_reliability.py
	.venv/bin/python slide_reliability.py

clean:
	rm -f Service_Reliability_Presentation.pptx
