
echo -e "--- STOCK ---"

for modelo in $(ls | grep [0-9])
do
echo -e $modelo ":: \c" ; cat $modelo
done
echo -e "------x------\n"
