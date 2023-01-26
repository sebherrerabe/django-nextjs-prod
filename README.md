# Django-Next.js Hybrid Project Boilerplate

This repository contains a production-ready boilerplate for a Django-Next.js hybrid project, specifically for use with Railway.

## Features

- Dockerfile for building the app
- Nginx as a reverse proxy
- Gunicorn for serving Python
- Django as the backend framework
- Next.js as the frontend framework
- [django-nextjs](https://github.com/QueraTeam/django-nextjs) library made by QuoraTeam for easy integration between Django and Next.js

## Getting Started

1. Clone the repository: `git clone https://github.com/[username]/django-nextjs-boilerplate.git`
2. Link the repository to your Railway account and set the following environment variables in the app settings:
   - RAILWAY_STATIC_URL (your domain)
   - DJANGO_DEBUG=False
   - DJANGO_SECRET_KEY
3. The Docker image will be built automatically by Railway.
4. If you want to add more environment variables, you can do so by adding them to the ARG section of the Dockerfile and adding them to the `.env` file in the following way:
```
ARG RAILWAY_STATIC_URL
ARG DJANGO_DEBUG
ARG DJANGO_SECRET_KEY

RUN mkdir -p /usr/src/app

RUN echo "RAILWAY_STATIC_URL=$RAILWAY_STATIC_URL\nDJANGO_DEBUG=$DJANGO_DEBUG\nDJANGO_SECRET_KEY=$DJANGO_SECRET_KEY" >> /usr/src/app/.env
```

## Additional Resources

- [Django documentation](https://docs.djangoproject.com/)
- [Next.js documentation](https://nextjs.org/docs)
- [django-nextjs documentation](https://github.com/QueraTeam/django-nextjs)
- [Railway](https://www.railway.com/)
