
rm .tags
rm .tags_sorted_by_file

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /opt/ros/indigo/include/ .tags
