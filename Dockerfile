
FROM nginx:alpine

ARG RAILWAY_STATIC_URL
ARG DJANGO_DEBUG
ARG DJANGO_SECRET_KEY

RUN mkdir -p /usr/src/app

RUN echo "RAILWAY_STATIC_URL=$RAILWAY_STATIC_URL\nDJANGO_DEBUG=$DJANGO_DEBUG\nDJANGO_SECRET_KEY=$DJANGO_SECRET_KEY" >> /usr/src/app/.env

COPY app /usr/src/app
COPY gunicorn/config.py /usr/src/gunicorn/config.py

# Copy Nginx config file
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Install Node.js and npm
RUN apk add nodejs npm

RUN apk add --no-cache python3 python3-dev \
    && python3 -m ensurepip --upgrade \
    && pip3 install --upgrade pip setuptools

# Install Python dependencies
RUN pip3 install -r /usr/src/app/requirements.txt

# Install Next.js dependencies and build
RUN cd /usr/src/app/front_end && npm install && npm run build


# Start Gunicorn and Next.js
CMD ["sh", "-c", "gunicorn -c /usr/src/gunicorn/config.py app.wsgi & cd /usr/src/app/front_end && npm run start & nginx -g 'daemon off;' -c /etc/nginx/nginx.conf"]

