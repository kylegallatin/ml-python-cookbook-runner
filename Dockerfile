FROM python:3.10

WORKDIR /workspace
COPY download_nltk.py .

RUN apt-get update && apt-get install graphviz -y && apt-get clean

RUN python -m pip install spacy nltk && \
    python download_nltk.py && \
    spacy download en_core_web_sm

COPY ./requirements.txt /workspace

RUN --mount=type=cache,target=/root/.cache/pip python -m pip install --no-cache -r requirements.txt --timeout=2000

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root"]