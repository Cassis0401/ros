
rm tags
rm .tags

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /opt/ros/indigo/include/
mv tags .tags
