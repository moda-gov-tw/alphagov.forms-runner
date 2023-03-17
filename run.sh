docker run -it \
    --name govuk_form_runner \
    -e REDIS_URL='redis://redis:6379/0' \
    -e RAILS_ENV=development \
    -e NODE_ENV=development \
    --link form_redis:redis \
    --user root \
    -p 127.0.0.1:3001:3001 \
    govuk-form-runner sh
