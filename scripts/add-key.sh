#!/bin/bash

KEY_CHAIN=ios-build.keychain
security create-keychain -p travis $KEY_CHAIN
# Make the keychain the default so identities are found
security default-keychain -s $KEY_CHAIN
# Unlock the keychain
security unlock-keychain -p travis $KEY_CHAIN
# Set keychain locking timeout to 3600 seconds
security set-keychain-settings -t 3600 -u $KEY_CHAIN

# Add certificates to keychain and allow codesign to access them
security import ./scripts/certificates/certificates-apple-duytran-123456.p12 -k $KEY_CHAIN -P 123456  -T /usr/bin/codesign

security set-key-partition-list -S apple-tool:,apple: -s -k travis ~/Library/Keychains/ios-build.keychain

echo "list keychains: "
security list-keychains
echo " ****** "

echo "find indentities keychains: "
security find-identity -p codesigning  ~/Library/Keychains/ios-build.keychain
echo " ****** "

# Put the provisioning profile in place
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles

uuid=`grep UUID -A1 -a ./scripts/provisionings/provisioningkhoavoconfigci.mobileprovision | grep -io "[-A-F0-9]\{36\}"`
cp ./scripts/provisionings/provisioningkhoavoconfigci.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/$uuid.mobileprovision

echo "show provisioning profile"
ls ~/Library/MobileDevice/Provisioning\ Profiles
echo " ****** "