# simple-python-app-codespaces-v2

This repo is based on the simple-python-app-codespaces template. The idea is to extend the demo in simple-python-app-codespaces so the image that was hand-built in simple-python-app-codespaces gets built automatically
via GitHub actions. For now we don't think about branches, test and pushing the image to a registry. I hope to add all these aspects in later demos so we end up with a modern CI/CD platform with preview enviornments 
fully cloud-based. We will see..:-)

### 1. Open source via Codespaces

On the usual github code button press arrow down and select codespaces. The main branch from this repo is opened in a codespace.

### 2. Inspect requirements.txt and modified Dockerfile

Note how the Flask requirement is now added and referenced in the Dockerfile. We no longer have to install it manually as in v1

### 3. Inspect the build.sh file

The build.sh script contains the docker build command that we previously had to type or copy/paste and run manually.

Using the below command makes it slightly easier to run the build command and enables us to extend the build logic later if necessary

```
source ./build.sh
```

### 4. Inspect the run.sh file

Similarly as in step 3 we now have a small script to run the image we just built in previous step. Run it with:

```bash
source ./run.sh
```

For a bit of usability we write how the application is now accessible in the browser localhost

### 5. Try it!

Run the below commands below to build and run the command yourself!

```
source ./build.sh
source ./run.sh
```

### 8. Next steps

Mature solution a bit. Setup a GitHub Action that uses the build.sh command to build. I like to write build logic in some common general purpose language and then just have a thin layer on the build server executing it.
By using that approach other developers can easily build and debug localhost and it is trivial to shift from one build server technology to another. The opposite approach is a heavy implementation written in some 
specialized language that only works on a certain build server technology. Many engineers love complexity. I always strive for simplicity whenever possible. I believe the thin build server layer approach is much more
approachable for mainstream developers, which the world probably consist mostly of.