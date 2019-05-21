// Name of cluster
cluster_name = "nkv21"

// Region and Zone
// See GPU support by region: https://cloud.google.com/compute/docs/gpus/#gpus-list
cloud_provider = "GCP"

region = "us-west1"

zone = "us-west1-b"

// Master IP address to use
// See IP ranges by region: https://cloud.google.com/vpc/docs/vpc#ip-ranges
master_ip = "10.138.0.2"

// IPs that are allowed SSH access
ssh_source_ranges = []
