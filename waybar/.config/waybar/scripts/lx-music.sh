#!/bin/bash

bash -c "playerctl -p chromium,%any metadata --format '{{trunc(title,15)}}-{{uc(status)}}'"
