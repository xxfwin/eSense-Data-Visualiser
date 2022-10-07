
echo "Install latest node-gyp to support visual studio 2022 compiler"
npm install --global node-gyp@latest
npm prefix -g | % {npm config set node_gyp "$_\node_modules\node-gyp\bin\node-gyp.js"}
echo "Config nodejs to use visual studio 2022"
npm config set msvs_version 2022

echo "Install npm packages"
npm install
