FROM python:3.11-bookworm

WORKDIR /app/

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY app.py NB-logo-no-eng-svart.png /app/
EXPOSE 8501

CMD streamlit run app.py --browser.gatherUsageStats=False