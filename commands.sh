#docker run --shm-size=512m -p 80:4000 --privileged -it -v ${PWD}:/working_dir -w /working_dir ubuntu
#docker run --shm-size=512m -p 80:4000 --privileged -it -v "%cd%":/working_dir -w /working_dir ubuntu
apt-get update
apt-get install imagemagick
apt-get install ruby-full
gem install bundler
apt-get install build-essential dh-autoreconf
bundle install
bundle exec jekyll serve --host=0.0.0.0 --port=8080 --watch

#docker run --rm -v "%cd%:/srv/jekyll/" -p "8080:8080" -it amirpourmand/al-folio bundler  exec jekyll serve --watch --port=8080 --host=0.0.0.0 