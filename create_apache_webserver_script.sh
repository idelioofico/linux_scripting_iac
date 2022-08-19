echo ".........................................................."
echo "Bootcamp - Linux Experience - Digital Innovation One, Inc"
echo "                          by iofico | Idelio Ofico                                "
echo ".........................................................."
echo "."
echo "."
echo "."
echo "."
echo "Updating server..."
apt-get update 
apt-get upgrade -y
echo "Updating server...Done"
echo "."
echo "."
echo "Instaling apache2..."
apt install apache2 -y
echo "Instaling apache2...Done"
echo "Instaling Unzip..."
apt install unzip -y
echo "Instaling Unzip...Done"
echo "."
echo "."
echo "Cloning repo from github"
cd /tmp
wget https://github.com/idelioofico/idelioofico.github.io.zip
unzip idelioofico.github.io
cd idelioofico.github.io
cp -R  *  /var/www/html

echo "."
echo "."
echo "Finished executing script.."
