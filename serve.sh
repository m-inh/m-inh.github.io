docker run --rm \
  -p 4000:4000\
  --volume="$PWD:/srv/jekyll" \
  -dit minhnt95/jekyll_minh \
  jekyll serve