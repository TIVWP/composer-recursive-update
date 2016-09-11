#!/usr/bin/env bash
shopt -s expand_aliases
source ~/.bash_aliases

start_dir=${PWD}
### cpzu is an alias to `composer update`
cpzu
echo "------------"

### CHANGE TO YOUR wp-content/plugins
cd public/app/plugins

### CHANGE *wpglobus* to whatever mask you need.
for x in *wpglobus*/vendor; do
	cd `dirname ${x}`
	echo ":::" `basename ${PWD}`
	cpzu
	cd ${OLDPWD}
	echo "------------"
done

cd ${start_dir}
cpzu
echo "Done."
