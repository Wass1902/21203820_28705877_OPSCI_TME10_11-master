#Création du répertoire mosquitto
mkdir mosquitto
mkdri mosquitto/config
mkdir mosquitto/data
mkdir mosquitto/log
touch mosquitto/config/mosquitto.conf
nano mosquitto/config/mosquitto.conf

#Récupérer un conteneur pouvant communiquer avec MQTT et kafka
docker pull arthurescriou/mqtt-kafka-connector:1.0.0

#Test
cd mqtt-js-tests
yarn
node read.js
