FROM circleci/openjdk:8-jdk-node

RUN sudo apt-get install -y scala ca-certificates postgresql-client maven build-essential

ENV SBT_VERSION 0.13.15

RUN cd /tmp \
 && wget -q "https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb" \
 && sudo dpkg -i "sbt-$SBT_VERSION.deb" \
 && rm -f "sbt-$SBT_VERSION.deb"
