# opentofu
OpenTofu is an open-source alternative to Terraform, designed to be fully compatible with Terraform 
configuration files and modules. It provides a community-driven infrastructure as code (IaC) tool 
for provisioning and managing cloud resources.

Install Opentofu (Debian):
--------------------------
```
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://get.opentofu.org/opentofu.gpg | sudo tee /etc/apt/keyrings/opentofu.gpg >/dev/null
curl -fsSL https://packages.opentofu.org/opentofu/tofu/gpgkey | sudo gpg --no-tty --batch --dearmor -o /etc/apt/keyrings/opentofu-repo.gpg >/dev/null
sudo chmod a+r /etc/apt/keyrings/opentofu.gpg /etc/apt/keyrings/opentofu-repo.gpg
echo \
  "deb [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main
deb-src [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main" | \
  sudo tee /etc/apt/sources.list.d/opentofu.list > /dev/null
sudo chmod a+r /etc/apt/sources.list.d/opentofu.list
sudo apt-get update
sudo apt-get install -y tofu
mkdir opentofu && cd opentofu
# Add your terraform project directory and add the main.tf , providers.tf , variable.tf , output.tf , terraform.tfvars
# once you are ready to launch your project, run these commands:
tofu init
tofu apply
# To switch from terraform to Opentofu run:
tofu init -upgrade
# Optional: Add Google terraform examples from github.
cd opentofu
git clone https://github.com/terraform-google-modules/terraform-docs-samples.git
```

Optional: Install Gcloud SDK (Debian) :
-----------------------------
```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update && sudo apt-get install google-cloud-cli
gcloud init
# Login via provided URL Link in terminal. It will generate an auth code, Copy and enter that auth code into the terminal.
# To reauthenticate in the future , run . 
gcloud auth login --no-launch-browser
# To find some information useful for terraform / Opentofu
gcloud projects list
gcloud compute zones list
```

References:
--------------
* https://opentofu.org/docs/intro/install/deb/
* https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
* https://cloud.google.com/docs/terraform/samples
* https://github.com/terraform-google-modules/terraform-docs-samples