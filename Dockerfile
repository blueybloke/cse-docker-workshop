# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:slim

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

# Used for documentation, doesn't actually publish the port.
EXPOSE 5000

# Tell flask what to look at.
ENV FLASK_APP=src/app.py

CMD python src/app.py
