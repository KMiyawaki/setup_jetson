#!/bin/bash
sudo apt-get install $(check-language-support -l ja) -y
code-oss --install-extension MS-CEINTL.vscode-language-pack-ja
