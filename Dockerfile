FROM releases-docker.jfrog.io/jfrog/router:7.81.0

# Create a new user 'customrouter' with UID 1035
RUN useradd -u 1035 router

# Optionally, if the application requires specific group permissions, create and assign a group as well
RUN groupadd -g 1035 routergroup
RUN usermod -a -G routergroup router

# Switch to the new user
USER router
