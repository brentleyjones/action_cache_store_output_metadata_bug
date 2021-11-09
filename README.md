# `--experimental_action_cache_store_output_metadata` bug reproductions

Run the various `repoX.sh` scripts to test these various conditions:

- `repo1.sh`: Uses `--experimental_action_cache_store_output_metadata` and changes a file (not invalidating the analysis cache), resulting in a build failure
- `repo2.sh`: Uses `--experimental_action_cache_store_output_metadata` and invalidates the analysis cache, resulting in a build failure
- `repo3.sh`: Does not use `--experimental_action_cache_store_output_metadata` and changes a file (not invalidating the analysis cache), resulting in a build failure
- `repo4.sh`: Does not use `--experimental_action_cache_store_output_metadata` and invalidates the analysis cache, _not_ resulting in a build failure
