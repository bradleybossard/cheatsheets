### Install Docker

    wget -qO- https://get.docker.com/ | sh
    
After this install, add your user to the `docker` group


### Install Docker Compose (1.5.1)
    curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose    
    chmod +x /usr/local/bin/docker-compose
    
### Commands

    docker ps -a                             # See all processes
    docker exec -it <container-name> bash    # Open bash shell on running container

    docker images                            # Show download images
    docker history <image-name + tab>        # Show image history, tab complete on image name

    docker run --rm -it ubuntu bash          # Pull down Ubuntu image and open a shell in it
    docker run --rm -it busybox bash         # Pull down Busybox image and open a shell in it

    docker run -p <outside_port>:<inside_port> <image_name>  # Forward an interior port to the outside 
    
    docker run --rm -ti yikaus/alpine-bash /bin/bash  # Pull down Alpine Linux and open a shell in it
    apk update;                                       # Update Alpine package manager.
    apk search <package-name>                # Search for package.  'apk update' required prior.
    apk install <package-name>               # Install package.

    docker build --no-cache                  # Build the image from scratch without using cache
                                             # Useful well pulling in github repos to image

    docker rm <container-hash + tab>                  # Tab complete container hash
    docker rm $(docker ps -a -q)                      # Remove all containers
    docker rmi $(docker images -q -f dangling=true)   # Remove dangling containers
    docker rmi $(docker images -q)                    # Remove all images
