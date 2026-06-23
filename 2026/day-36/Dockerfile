
FROM python:3.11-slim

# Create non-root user
RUN useradd -m danish
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY --chown=danish:danish  .  .

USER danish

CMD ["python", "app.py"]