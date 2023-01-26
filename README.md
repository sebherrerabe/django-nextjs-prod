# Django-Next.js Hybrid Project Boilerplate

This repository contains a production-ready boilerplate for a Django-Next.js hybrid project.

## Features

- Dockerfile for building the app
- Nginx as a reverse proxy
- Gunicorn for serving Python
- Django as the backend framework
- Next.js as the frontend framework
- [django-nextjs](https://github.com/QueraTeam/django-nextjs) library made by QuoraTeam for easy integration between Django and Next.js

## Getting Started

1. Clone the repository: `git clone https://github.com/[username]/django-nextjs-boilerplate.git`
2. Build the Docker image: `docker build -t django-nextjs .`
3. Run the Docker container: `docker run -p 8000:8000 django-nextjs`
4. Visit `http://localhost:8000` in your browser

## Additional Resources

- [Django documentation](https://docs.djangoproject.com/)
- [Next.js documentation](https://nextjs.org/docs)
- [django-nextjs documentation](https://github.com/QueraTeam/django-nextjs)
