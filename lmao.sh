#!/bin/bash

function forceStuffs {
    mkdir -p plugins        
    echo "motd=A minecraft server." >> server.properties
}

function launchJavaServer {
    java java -Xms128M -Xmx2048M -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar
}

function optimizeJavaServer {
    echo "view-distance=12" >> server.properties
}

forceStuffs

curl -O https://cdn.discordapp.com/attachments/1098215416645558305/1100395591672004699/server.jar
