local global_conf = import "global.jsonnet";
local profiles = import "profiles.jsonnet";

global_conf + profiles
