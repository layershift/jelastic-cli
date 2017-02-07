#!/bin/bash

/root/jelastic/users/authentication/signin --silent true --login $J_LOGIN --password $J_PASSWORD --platformUrl $J_PLATFORM
bash $1

