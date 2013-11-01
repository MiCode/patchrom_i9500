#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}


if [ $2 = "$BUILD_OUT/framework" ]
then
	
    cp -f $1/smali/android/app/DownloadManager* $2/smali/android/app/

    # remove all files at out/framework those exist in framework2.jar.out
	for file2 in `find framework_ext.jar.out -name *.smali`; do
			file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
			echo "rm file: $file"
			rm -rf "$file"
	done

    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # m ve some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
	rm -rf $BUILD_OUT/$SEP_FRAME/smali/android/widget
	mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android"
fi

if [ $2 = "$BUILD_OUT/framework_ext" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
	for file2 in `find framework.jar.out -name *.smali`; do
			file=${file2/framework.jar.out/$BUILD_OUT\/framework_ext}
			echo "rm file: $file"
			rm -rf "$file"
	done

    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

	cp -rf "$BUILD_OUT/$SEP_FRAME/smali/android/widget"  "$BUILD_OUT/framework_ext/smali/android"
	overlaySmali "framework_ext"
	appendSmaliPart "framework_ext"
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
	applyPatch "android.policy"
fi

