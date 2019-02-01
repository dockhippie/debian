local agent(arch='amd64') =
  if arch == 'amd64' then
    'amd64'
  else if arch == 'arm32v6' then
    'arm'
  else if arch == 'arm32v7' then
    'arm'
  else if arch == 'arm64v8' then
  	'arm64'
  else
    arch;

{
  build(name, version='latest', arch='amd64')::
    {
      kind: 'pipeline',
      name: arch + '-' + version,
      platform: {
        os: 'linux',
        arch: agent(arch),
      },
      steps: [
        {
          name: 'dryrun',
          image: 'plugins/docker:latest',
          pull: 'always',
          settings: {
            dry_run: true,
            tags: version,
            dockerfile: version + '/Dockerfile.' + arch,
            context: version,
            repo: name,
          },
          when: {
            event: ['pull_request'],
          },
        },
        {
          name: 'publish',
          image: 'plugins/docker:latest',
          pull: 'always',
          settings: {
            tags: version,
            dockerfile: version + '/Dockerfile.' + arch,
            context: version,
            repo: name,
            username: { from_secret: 'docker_username' },
            password: { from_secret: 'docker_password' },
          },
          when: {
            event: ['push', 'tag'],
          },
        },
      ],
      trigger: {
        ref: [
          'refs/heads/master',
          'refs/pulls/**',
          'refs/tags/**',
        ],
      },
    },
}
