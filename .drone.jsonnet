local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/debian';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v7'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, 'v9', '9', 'amd64'),
  pipeline.build(name, 'v9', '9', 'arm32v7'),
  pipeline.build(name, 'v9', '9', 'arm64v8'),
  pipeline.manifest('v9', '9', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.microbadger(['latest', '9']),
]
