# Create a Jekyll container from a Ruby Alpine image

# at a minimum, use Ruby 2.5 or later

FROM ruby:2.7-alpine3.15

# Add jekyll dependencies to Alpine
RUN apk update
RUN APK add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
