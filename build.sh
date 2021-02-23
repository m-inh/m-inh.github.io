docker run --rm \
  --env JEKYLL_ENV=production \
  --volume="$PWD:/srv/jekyll" \
  -it minhnt95/jekyll_minh \
  jekyll build