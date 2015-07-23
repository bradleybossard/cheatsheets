    docker ps -a                             # See all processes
    docker exec -it <container-name> bash    # Open bash shell on running container

    docker images                            # Show download images
    docker history <image-name + tab>        # Show image history, tab complete on image name

    docker run --rm -it ubuntu bash          # Pull down Ubuntu image and open a shell in it
    docker run --rm -it busybox bash         # Pull down Busybox image and open a shell in it
    
    docker run --rm -ti yikaus/alpine-bash /bin/bash  # Pull down Alpine Linux and open a shell in it
    apk update;                                       # Update Alpine package manager.
    apk search <package-name>                # Search for package.  'apk update' required prior.
    apk install <package-name>               # Install package.

    docker rm <container-hash + tab>         # Tab complete container hash
    docker rm $(docker ps -a -q)             # Remove all containers
    docker rmi $(docker images -q)           # Remove all images
