# git large file store install
git lfs install

# git lfs track file which size > 100M
for f_path in $(find . \( -path "./.git" -o -path "./.idea" -o -path "*/target" -o -path "./venv" \) -prune -o -type f -size +50M -print);
do
   git lfs track "$f_path"
done
