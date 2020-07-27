#!/bin/bash
set -eo pipefail
STREAM=$(aws cloudformation describe-stack-resource --stack-name ben-mini-apm --logical-resource-id stream --query 'StackResourceDetail.PhysicalResourceId' --output text)
echo $STREAM
