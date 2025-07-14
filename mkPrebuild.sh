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
rm -rf ${buildPath}"/libs/node_modules"
mkdir ${buildPath}"/libs/node_modules"
cp -rf "/OT/OTNPM/otplc" ${buildPath}"/libs/node_modules/"
cp -rf "/OT/OTNPM/otmHH" ${buildPath}"/libs/node_modules/"


echo "- remove all sites [${buildPath}]"
rm -rf ${buildPath}"/sites"
mkdir ${buildPath}"/sites"
rm -rf ${buildPath}"/sitesTestExtDir"
rm -rf "${buildPath}/src"
echo "remove tmp ... ${buildPath}/tmp/*"
rm -rf "${buildPath}/tmp/"*
ls ${buildPath}"/tmp/"
echo "  DONE"
rm -rf "${buildPath}/yss/tmp/"*
rm -rf ${buildPath}"/screenShots"
rm -rf ${buildPath}"/yss_templates"
rm -rf ${buildPath}"/yss1_templates"

echo "tmp is ..."


echo "- copy test_functions ...."
cp -rf ${srcPath}"/sites/test_functions" \
  ${buildPath}"/sites/"



echo "-------- RC DONE"


echo "---------------------"
echo "---------------------"