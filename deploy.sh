#!/bin/bash
#GAE_DEPLOY="GAE-Python-SDK"
GAE_DEPLOY="gae-orig-sdk"
docker build -t jsheffie/$GAE_DEPLOY .
docker push jsheffie/$GAE_DEPLOY

# ssh  learn << EOF
# docker pull jsheffie/$GAE_DEPLOY:latest
# docker stop web || true
# docker rm web || true
# docker rmi jsheffie/$GAE_DEPLOY:current || true
# docker tag jsheffie/$GAE_DEPLOY:latest jsheffie/$GAE_DEPLOY:current
# docker run -d --restart always --name web -p 3000:3000 jsheffie/$GAE_DEPLOY:current
# EOF
