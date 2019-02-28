local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/debian';

[
  pipeline.build(name, 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'arm32v7'),
  pipeline.build(name, 'latest', 'arm64v8'),
  pipeline.manifest('latest', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.build(name, '9', 'amd64'),
  pipeline.build(name, '9', 'arm32v7'),
  pipeline.build(name, '9', 'arm64v8'),
  pipeline.manifest('9', ['amd64', 'arm32v7', 'arm64v8']),
  pipeline.microbadger(['latest', '9']),
]
