# snitch-sca-smoke

Throwaway repo for end-to-end smoke-testing the Snitch GitHub Action's SCA
(software composition analysis) feature.

Lockfiles in this repo intentionally pin **known-vulnerable** versions of
popular packages so the Action's dependency scan has something to flag.
Do not use this repo as a starter template for anything real.
