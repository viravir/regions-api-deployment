#!/bin/bash
repoList=" 
  regions-api-server
  regions-api-client
"

# environment setup
if [ ! -f .env ]; then
  cat .env.sample > .env
fi

if [ ! -f nginx.conf ]; then
  cat nginx.sample > nginx.conf
fi

echo "Cloning repos..."
for repo in $repoList; do
  git clone https://github.com/viravir/$repo.git

  if cd $repo; then
    if [ -f package.json ]; then
      echo "Installing deps for ${repo}"
      npm i
    fi

    if [[ $repo == "regions-api-client" ]]; then
      # client environment setup
      if [ ! -f .env ]; then
        cat .env.sample > .env
      fi
      echo "Building static files for ${repo}"
      npm run build
    fi

    cd ..
  fi
done;

echo "Project is ready to start!"

./launch.sh