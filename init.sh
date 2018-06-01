echo "init script is starting";
git clone "https://github.com/mariusmotea/diyHue.git";
python pytest.py;
echo $PWD;
cd /diyHue/BridgeEmulator/;
mkdir /opt/hue-emulator
cp -r web-ui functions cert.pem HueEmulator3.py coap-client-linux config.json /opt/hue-emulator/
echo "init script has finished";
cd /opt/hue-emulator
python /opt/hue-emulator/HueEmulator3.py
