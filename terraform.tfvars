# Authentication
tenancy_ocid         = "${{secrets.OCI_TENANCY_ID}}"
user_ocid            = "${{secrets.OCI_USER_ID}}"
fingerprint          = "${{secrets.OCI_FINGERPRINT}}"
private_key_path     = "<pem_private_key_path>"

# Region
region = "${{secrets.OCI_REGION}}"

# Compartment
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaa6cu4btpjaxboimomt63c6g5glewevoqksku4ggkpt3be4c5lo5ga"

# OCI User and Authtoken
oci_username       = "oracleidentitycloudservice/luciano.carmo@oracle.com"
# For a federated user (single sign-on with an identity provider), enter the username in the following format: TenancyName/Federation/UserName. 
# For example, if you use OCI's identity provider, your login would be, Acme/oracleidentitycloudservice/alice.jones@acme.com. 
#If you are using OCI's direct sign-in, enter the username in the following format: TenancyName/YourUserName. For example, Acme/alice_jones. Your password is the auth token you created previously.

oci_user_authtoken = "yHX5>pu0m.Xw9cvk-n;S"
# You can get the auth token from your Profile menu -> click User Settings -> On left side  click *Auth Tokens -> Generate Token