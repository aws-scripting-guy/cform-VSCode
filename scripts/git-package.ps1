# Write package.json back to github only for release builds 

write-host "[info] Build reason is: $env:BUILD_REASON "

if ($env:BUILD_REASON -eq "Schedule" -or $env:BUILD_REASON -eq "Manual") {
  # write package.json back to repo 
  git show
  git log --oneline
  git push 
}
else {
  # do nothing    
  write-host "[info] this is not a scheduled build. Build reason is $env:BUILD_REASON "
}