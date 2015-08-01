RUN apt-get update
RUN apt-get install -y curl sudo

RUN echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.community.list
RUN curl -L https://debian.datastax.com/debian/repo_key | apt-key add -

RUN apt-get update
RUN apt-get install -y opscenter

RUN sudo service opscenterd start