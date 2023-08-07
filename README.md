# vcpkg Registry
This is a vcpkg git registry containing port files for libraries I create so I can easily use them in other projects.
If you somehow find yourself also wanting to use my code for some reason, you can too.

Here's how:
1. Use manifest mode for vcpkg (it might work without it but I haven't tested it so don't @ me)
2. Create a `vcpkg-configuration.json` in the project root with the following content:
   * `baseline` should be set to the latest commit hash, do be sure to update this if you want updated versions of libraries to be populated
   * `packages` this array should be filled will all the libraries you wish to pull from this registry, they can all be found in the `ports/` directory
```json
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/PeriBooty/vcpkg-registry.git",
      "baseline": "ce59ef30d0b0bd201a2483a91adffb5934b69848",
      "packages": [
        "libdnxpp"
      ]
    }
  ]
}
```
3. Add dependencies to `vcpkg.json` manifest like usual:
```json
{
  "name": "my-project",
  "version": "1.0.0",
  "dependencies": [
    "libdnxpp"
  ]
}
```

Then you're good to go!
