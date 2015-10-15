# Ruby image
FROM ruby:2.2.0

# Define Home
ENV APP_HOME /app

# Install essentials, nodejs and git
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git

# Install Bundler
RUN gem install bundler --no-ri --no-rdoc

# Create the folder
RUN mkdir $APP_HOME

# Change the workdir
WORKDIR $APP_HOME

# Add files
ADD . $APP_HOME

# docker run --rm -v ~/.gitconfig:/root/.gitconfig -v ~/.ssh/:/root/.ssh/ -v ~/.gem/:/root/.gem/ -v `pwd`:/gem/ zedtux/switchery-rails rake release
