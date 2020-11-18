@REM create django project in container
docker-compose run sh -c "django-admin.py startproject app ."
@REM run test
docker-compose run sh -c "python manage.py test"