#docker run --shm-size=512m -p 80:4000 --privileged -it -v ${PWD}:/working_dir -w /working_dir ubuntu
apt-get update
apt-get install ruby-full
gem install bundler
apt-get install build-essential dh-autoreconf
bundle install
bundle exec jekyll serve --host=0.0.0.0