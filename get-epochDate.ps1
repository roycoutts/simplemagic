# This script demonstrates how to get the Date/Time from Meditech's Epoch Date.
# This is the same as Unix Epoch Date with slight modification.
#
# Calling Function such as:
#
#      PS> get-epochDate 1041209999
#
# Will Return the Value
#
#      PS> Tuesday, February 26, 2013 6:59:59 PM


Function get-epochDate ($epochDate) {
  $Epoch_UNIX     = '1/1/1970'
  $Epoch_MEDITECH = '3/1/1980'
  # [timezone]::CurrentTimeZone.ToLocalTime(([datetime]$Epoch_UNIX).AddSeconds($epochDate)) 
    [timezone]::CurrentTimeZone.ToLocalTime(([datetime]$Epoch_MEDITECH).AddSeconds($epochDate)) 
}
  