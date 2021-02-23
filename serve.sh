docker run --rm \
  -p 4000:4000\
  --volume="$PWD:/srv/jekyll" \
  -it minhnt95/jekyll_minh \
  jekyll serve