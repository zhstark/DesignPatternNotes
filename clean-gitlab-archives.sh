#!/bin/bash

# project_id, find it here: https://gitlab.com/[organization name]/[repository name]/edit inside the "General project settings" tab
project_id="4"

# token, find it here: https://gitlab.com/profile/personal_access_tokens
token="8XKR472uAHCxUnXyodf6"
server="gitlab.hlbenkict.com"

# go to https://gitlab.com/[organization name]/[repository name]/-/jobs
# then open JavaScript console
# copy/paste => copy(_.uniq($('.ci-status').map((x, e) => /([0-9]+)/.exec(e.href)).toArray()).join(' '))
# press enter, and then copy the result here :
# repeat for every page you want
job_ids=(1860 1853 1850 1847 1844)

for job_id in ${job_ids[@]};
do
 URL="https://$server/api/v4/projects/$project_id/jobs/$job_id/artifacts"
 echo "$URL"
 curl --request DELETE --header "PRIVATE-TOKEN:${token}" "$URL"
 echo "\n"
done