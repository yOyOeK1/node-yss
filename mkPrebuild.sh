echo "---------------------"
echo "---------------------"


cowsay -f moose "HEllow from pre build rc !"

srcPath="/OT/ySS_calibration"
buildPath="/home/yoyo/Apps/node-yss/yss"


echo "Doing...."

echo "- clean directory in package path"
rm -rf ${buildPath}

echo "- copy current instance from [${srcPath}]"
cp -rf ${srcPath} ${buildPath}


echo "- remove gitignore ...."
rm ${buildPath}"/libs/.gitignore"


echo "- copy local node modules"
rm ${buildPath}"/libs/node_modules/otplc"
cp -rf "/OT/OTNPM/otplc" ${buildPath}"/libs/node_modules/"
rm ${buildPath}"/libs/node_modules/otmHH"
cp -rf "/OT/OTNPM/otmHH" ${buildPath}"/libs/node_modules/"


echo "- remove all sites"
rm -rf ${buildPath}"/sites"
mkdir ${buildPath}"/sites"
rm -rf ${buildPath}"/sitesTestExtDir"
rm -rf ${buildPath}"/src"
rm -rf ${buildPath}"/tmp/*"
rm -rf ${buildPath}"/screenShots"
rm -rf ${buildPath}"/yss_templates"
rm -rf ${buildPath}"/yss1_templates"


echo "- copy test_functions ...."
cp -rf ${srcPath}"/sites/test_functions" \
  ${buildPath}"/sites/"



echo "-------- RC DONE"


echo "---------------------"
echo "---------------------"