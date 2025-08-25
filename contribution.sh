#!/bin/bash

# Repo setup (run inside your repo)
git config user.name "YourGitHubUsername"
git config user.email "YourGitHubEmail@example.com"

# Array of random dates (50 days between April–July 2025)
DATES=(
"2025-04-03" "2025-04-07" "2025-04-12" "2025-04-15" "2025-04-19"
"2025-04-25" "2025-04-28" "2025-05-02" "2025-05-05" "2025-05-09"
"2025-05-11" "2025-05-14" "2025-05-18" "2025-05-21" "2025-05-25"
"2025-05-29" "2025-06-01" "2025-06-04" "2025-06-07" "2025-06-10"
"2025-06-13" "2025-06-17" "2025-06-20" "2025-06-24" "2025-06-28"
"2025-07-01" "2025-07-04" "2025-07-06" "2025-07-09" "2025-07-12"
"2025-07-14" "2025-07-17" "2025-07-19" "2025-07-22" "2025-07-25"
"2025-07-27" "2025-07-29" "2025-07-30" "2025-04-09" "2025-04-22"
"2025-05-07" "2025-05-15" "2025-06-06" "2025-06-15" "2025-06-27"
"2025-07-05" "2025-07-11" "2025-07-16" "2025-07-23" "2025-07-28"
)

# Make commits for each date
for DATE in "${DATES[@]}"; do
  echo "Commit on $DATE" >> commits.txt
  GIT_AUTHOR_DATE="$DATE 12:00:00" GIT_COMMITTER_DATE="$DATE 12:00:00" git commit -a -m "Backfilled commit on $DATE"
done

# Push changes
git push origin main
