FROM python:3.13.1
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT [ "poetry", "run", "streamlit", "run", "app/app.py", "--server.porta=8501", "--server.address=0.0.0.0" ]