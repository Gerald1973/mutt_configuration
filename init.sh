#!/bin/bash
printf 'Replacement of the variables concerning the user data in the mutt configuration file.\n'
printf '=====================================================================================\n'
printf 'User name :\n'
read userName
printf 'Password :\n'
read password
printf 'Real name :\n'
read realName
sed "s/@password/$password/g; s/@userName/$userName/g; s/@realName/$realName/g" muttrc > muttrcgenerated
if [ $? = 0 ]; then
    printf 'Are you sure to override the .muttrc configuration file? (Y/N)'
    read answer
    if [ "${answer^^}" = "Y" ]; then
        mv -i ./muttrcgenerated ~/.muttrc
        if [ $? = 0 ]; then 
            printf 'Operation successful.\n'
        fi
    fi
fi
