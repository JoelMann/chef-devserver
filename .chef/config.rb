# See http://docs.chef.io/workstation/config_rb/ for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "joelmann"
client_key               "#{current_dir}/joelmann.pem"
chef_server_url          "https://api.chef.io/organizations/jmsa"
cookbook_path            ["#{current_dir}/../cookbooks"]
validation_key "#{current_dir}/jmsa-validator.pem"
