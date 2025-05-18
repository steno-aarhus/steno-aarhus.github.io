#!/bin/sh

mkdir -p data

# Get the details of the repositories, to later use to include in the website.
get_website_repo_details() {
  gh repo list steno-aarhus \
    --json name,description,homepageUrl \
    --visibility public \
    --no-archived \
    --source \
    --topic ${1} | 
    jq 
}

# For larger project websites.
get_website_repo_details website,project > data/projects.json

# For documentation/resource/support websites.
get_website_repo_details resource,website > data/resources.json

# For software projects like R packages.
get_website_repo_details software,website > data/software.json

# For event websites like courses, seminars, conferences.
get_website_repo_details event,website > data/events.json

# For group websites.
get_website_repo_details group,website > data/groups.json

# For individual research projects, without websites.
get_website_repo_details research-project > data/research-projects.json

# Quarto expects the data in YAML format, so we need to convert the JSON files to YAML.
for file in data/*.json;
do 
  # This seems to give an error...
  # yq -oy $file > "data/$(basename "$file" .json).yaml"

  # So have to first save it to a variable and then write it to a file.
  contents=$(yq -P -o=yaml $file)
  echo "$contents" > "data/$(basename "$file" .json).yaml"
done
