FROM python:3.8

COPY . /trabalho-individual-2022-2-adrian-160000572/
VOLUME ./:/trabalho-individual-2022-2-adrian-160000572/
# VOLUME ./coverage:/trabalho-individual-2022-2-adrian-160000572/coverage/

WORKDIR /trabalho-individual-2022-2-adrian-160000572

ENV POETRY_HOME=/opt/poetry
ENV POETRY_VIRTUALENVS_IN_PROJECT=true
ENV PATH="$POETRY_HOME/bin:$PATH"

# Installs poetry
RUN curl -sSL https://install.python-poetry.org | python3 - && \
  poetry install --no-interaction --no-ansi --no-root -vvv

CMD python src/main.py
