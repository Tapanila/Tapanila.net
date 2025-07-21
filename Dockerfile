FROM ruby:3.2-alpine

WORKDIR /app

# Install dependencies
RUN apk add --no-cache \
    build-base \
    git \
    nodejs \
    npm

# Copy Gemfile and install gems
COPY Gemfile* ./
RUN bundle install

# Copy the rest of the application
COPY . .

# Expose port
EXPOSE 4000

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--config", "_config.yml,_config.dev.yml", "--livereload", "--force_polling", "--incremental"]