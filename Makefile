# Add utility functions and scripts to the container
include docker/makefile/*.mk

.PHONY: all up down cex cim prepare install si exec info phpcs phpcbf

# Read project name from .env file
$(shell cp -n \.env.default \.env)
$(shell cp -n \.\/docker\/docker-compose\.override\.yml\.default \.\/docker\/docker-compose\.override\.yml)
include .env

# Get local values only once.
LOCAL_UID := $(shell id -u)
LOCAL_GID := $(shell id -g)

# Evaluate recursively.
CUID ?= $(LOCAL_UID)
CGID ?= $(LOCAL_GID)

# Prepare network name https://github.com/docker/compose/issues/2923
COMPOSE_NET_NAME := $(shell echo $(COMPOSE_PROJECT_NAME) | tr '[:upper:]' '[:lower:]'| sed -E 's/[^a-z0-9]+//g')_front
