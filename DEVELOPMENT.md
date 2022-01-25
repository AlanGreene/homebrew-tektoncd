# Development

To build a new version of tkn-dashboard:
- first [build the Tekton Dashboard front end](https://github.com/tektoncd/dashboard/tree/main/docs/dev#build-the-frontend)
- copy the contents of `<tektoncd/dashboard>/cmd/dashboard/kodata` into a folder named `www`
- copy the `tkn-dashboard` script from this repo's `src` folder as a sibling of the `www` folder
- test the tool by running `./tkn-dashboard`

Your browser should launch, and within a few seconds should display the Tekton Dashboard UI.
Assuming your current Kubernetes context is pointing to a cluster with Tekton Pipelines (optionally Tekton Triggers) installed, you should see the relevant Tekton resources displayed in the Dashboard as you navigate about the UI.

To release a new version of tkn-dashboard:
- `tar -czf tekton-dashboard-ui_<version>.tar.gz tkn-dashboard www/`
- `sha256sum tekton-dashboard-ui_<version>.tar.gz` and save the result
- update `Formula/tektoncd-dashboard.rb` to point to the new file and include the SHA256 checksum from the step above
- commit and push your change
- create a new GitHub release and attach the tar.gz file produced above, tag the release

To verify the new release:
- `brew upgrade tektoncd-dashboard`

The new version should be installed successfully.
