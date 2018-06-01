This dockerfile will bring up the Hue Emulator web front end.

To use it execute the below commands after cloning:

First command builds the docker image including cloning the repository of the project so it is using the latest code.
docker build -t maherb/hue-emulator .

Second command runs the docker image and exposes port 80 for the hub
docker run -d -p 80:80 -it maherb/hue-emulator


