VENV_BIN                 := venv/bin
PATH                     := $(VENV_BIN):$(PATH)

venv:
	@python3 -m venv venv
	@$(VENV_BIN)/pip install -U -r requirements.txt

start:
	@$(VENV_BIN)/python3 $(VENV_BIN)/gunicorn -w 2 -b :8000 app:app 

.PHONY: venv start

