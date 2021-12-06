export JEKYLL_VERSION=3.8
mkdir -p _site
podman run \
    -v $PWD:/srv/jekyll:rw \
    -v $PWD/_site:/srv/jekyll/_site:rw \
    -e PAGES_REPO_NWO=$PWD \
    -p 4000:4000 \
    --name jakebi \
    docker.io/jekyll/builder:$JEKYLL_VERSION bash -c "chmod 777 /srv/jekyll && jekyll serve"

