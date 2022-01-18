#!/bin/bash

printf "Enter bare reposititory path\n"
read BARE_PATH

printf "Enter reposititory path (not bare)\n"
read REPO_PATH

OUTPUT_FILENAME="post-receive.generated"
echo "#!/bin/bash" > $OUTPUT_FILENAME
echo "" >> $OUTPUT_FILENAME

echo "BARE_PATH=$BARE_PATH" >> $OUTPUT_FILENAME
echo "REPO_PATH=$REPO_PATH" >> $OUTPUT_FILENAME

echo "" >> $OUTPUT_FILENAME

echo 'cd $REPO_PATH' >> $OUTPUT_FILENAME
echo 'git --git-dir=$BARE_PATH --work-tree=$REPO_PATH checkout -f main' >> $OUTPUT_FILENAME
echo 'git --git-dir=$BARE_PATH --work-tree=$REPO_PATH submodule update --init --recursive' >> $OUTPUT_FILENAME

echo "Generated file: $OUTPUT_FILENAME"
