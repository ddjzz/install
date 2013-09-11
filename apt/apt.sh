#!/bin/bash 

dir_cache=/var/cache/apt/archives
dir_pool=/data/apt/ubuntu/pool
mkdir -p $dir_pool

echo ""
echo "Move new package to pool for cache."
pushd $dir_cache >/dev/null
list_packages=$(ls *.deb)
popd >/dev/null


for name in $list_packages;
do
	rm $dir_pool/$(dpkg --info $dir_cache/$name | grep Package: | sed 's/Package://' | awk '{print $1}')_*
	mv $dir_cache/$name $dir_pool/
done


echo ""
echo "Generate Packages.gz"
pushd $dir_pool >/dev/null
pushd .. >/dev/nell

mkdir -p dists/precise/main/binary-amd64/
dpkg-scanpackages pool /dev/null | gzip > dists/precise/main/binary-amd64/Packages.gz 2&> /dev/null

popd >/dev/null
popd >/dev/null

