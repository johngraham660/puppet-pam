# ===========================================================
# Class to manage Linux PAM (Pluggable Authentication Module)
# ===========================================================
# @param pam_service_enable [Boolean]: Ensure the service is enabled
# @param pam_service_ensure [String]: Ensure the service is running
class pam (
  $pam_service_enable = undef,
  $pam_service_ensure = undef,

) inherits pam::params {

  include pam::install
  include pam::config
  include pam::service

}
