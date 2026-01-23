# Squash Migrations

Periodically squash migrations to reduce overhead of the `db:migrate` Rake
task.

## Creating a release

1. Create a new pull request that:

- Bumps the version in `rails-squash-migrations.gemspec`
- Updates `CHANGELOG.md` to include all noteworthy changes, the release
  version, and the release date.

2. After the pull request lands, checkout the most up to date `main` branch and
   build the gem:

```console
$ docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) ruby gem build
```

3. Publish the gem:

   ```console
   $ docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) ruby gem push rails-squash-migrations-X.Y.Z.gem
   ```

4. Create and publish a git tag:

   ```console
   $ git tag X.Y.Z
   $ git push https://github.com/Pioneer-Valley-Books/rails-squash-migrations.git X.Y.Z
   ```
