## FAMPAY BACKEND ASSIGNMENT

An API to fetch latest videos from youtube sorted in reverse chronological order of their publishing date-time from YouTube for a given tag/search query in a paginated response.
The server fetches latest videos async after every 10 minutes and saves it to the db.

## SETUP GUIDE

###Setup Guide

    Clone the project
    pip install pipenv

    As this project is based on Django, your system need to have proper python setup.
    Go the project through the terminal and install all dependencies by using typing pip install -r requirements.txt in the terminal
    Inside the setting.py file, fill the variable GOOGLE_API_KEYS with all the API Keys available,the list should be filled as ['API_KEY_1','API_KEY_2',...]
    For getting an API key follow - YouTube data v3 API: https://developers.google.com/youtube/v3/getting-started
    Setup crontab to run Job
    python manage.py makemigrations
    python manage.py migrate
    Run the server using python mange.py runserver

fampay
.
├── Contains
│   ├── api               # The main Django app/api containing the models, views, serializers etc
|   ├── db.Postgres       # Postgres database housing the data of the videos fetched
│   └── manage.py         # Python code used for starting the app by establishing DRF server
|   └── requirements.txt  # Requirements file
|______________________   


To fetch new videos, visit the '/video' endpoint:

For watching added videos

open http://127.0.0.1:8000/vedio
to see all the fetched videos related to query posted in the past 5 minutes

if need any help visit : akshitjain.herokuapp.com