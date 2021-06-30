# Relaunching the container

If your container stops unexpectedly whilst working on the "Getting Started" exercises, you will need to restart the container and reinstall TypeScript.
This is because a container is discarded when it is stopped, so any changes you make will need to be reapplied in the new container.
(Note that this does not include file changes, which are mounted, or mirrored, to the files you are editing.)

## Steps to relaunch

* Run `launch_intro` in the root of this repository in one terminal window.
* Wait for the container to start up, then open another terminal window and run `docker-compose exec intro sh`, which will log you into the container.
* Run `node install -g typescript` to install TypeScript globally in the container.

You will now be able to carry on with the exercises!
