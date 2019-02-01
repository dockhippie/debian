local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/debian';

[
  pipeline.build(name ,'latest', 'amd64'),
  pipeline.build(name ,'latest', 'arm32v7'),
  pipeline.build(name ,'latest', 'arm64v8'),
  pipeline.build(name ,'9', 'amd64'),
  pipeline.build(name ,'9', 'arm32v7'),
  pipeline.build(name ,'9', 'arm64v8'),
  pipeline.build(name ,'8', 'amd64'),
  pipeline.build(name ,'8', 'arm32v7'),
  pipeline.build(name ,'8', 'arm64v8'),
  pipeline.build(name ,'7', 'amd64'),
  pipeline.build(name ,'7', 'arm32v7'),
  pipeline.build(name ,'7', 'arm64v8'),
]
