Here is my process for building a new IG from scratch. Start with https://github.com/cqframework/sample-content-ig.git and clone it into a new folder (in this case cds-100). Move all the examples into a new examples directory. They are for reference only. Run _updatePublisher.sh to start getting the input-cache populated. Then if you want change the tooling-cli version. The default was 3.4.0 but I'm using 3.6.0. Then run _updateCQFTooling.sh. Oh yeah, initialize your local repo, set up a remote and change git remote to your repo. Better check your .gitignore. 