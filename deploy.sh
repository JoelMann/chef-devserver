export SOLO_FOLDER=/var/soloconfig
if [ ! -d SOLO_FOLDER ] then
do
mkdir -r $SOLO_FOLDER
done
cd SOLO_FOLDER
dnf update -y
dnf upgrade -y
dnf install git -y
echo "Updated. Git installed. Starting chef process"
curl -L https://omnitruck.chef.io/install.sh | bash
git clone https://github.com/JoelMann/chef-devserver.git
chef-solo -c $SOLO_FOLDER/chef-devserver/solo.rb -j $SOLO_FOLDER/chef-devserver/node.json