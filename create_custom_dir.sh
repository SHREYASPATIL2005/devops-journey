<<task
Create custom directories with a given range in arguments
task

echo "Enter the name of the root directory"
read root_dir
mkdir $root_dir && cd $root_dir
echo "Enter the custom directory name"
read custom_dir
for ((i=$1;i<=$2;i++))
do
        mkdir "${custom_dir}${i}"
done
