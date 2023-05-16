#!/bin/bash

# Define counters for each type of HTTP status code
success_count=0
Bad_Request_error_count=0
Unauthorized_error_count=0
Forbidden_error_count=0
Request_Timeout_error_count=0
Internal_Service_error_count=0
other_error_count=0
total_count=0

# Read the log file line by line
while IFS= read -r line; do
  # Extract the status code from each line
  status_code=$(echo "$line" | awk -F '::' '{print $2}' | awk '{print $1}')

  # Increment the appropriate counter based on the status code
  # we can add more error and succeful results here (example 404 error as well)
  case "$status_code" in
    200)
      ((success_count++))
      ;;
    400)
      ((Bad_Request_error_count++))
      ;;
    401)
      ((Unauthorized_error_count++))
      ;;
    403)
      ((Forbidden_error_count++))
      ;;
    408)
      ((Request_Timeout_error_count++))
      ;;
    500)
      ((Internal_Service_error_count++))
      ;;
    *)
      ((other_error_count++))
      ;;
  esac

  ((total_count++))
done < logs.txt

# Calculate the percentages
success_percent=$(awk "BEGIN {printf \"%.2f\", $success_count * 100 / $total_count}")
Bad_Request_error_percent=$(awk "BEGIN {printf \"%.2f\", $Bad_Request_error_count * 100 / $total_count}")
Unauthorized_error_percent=$(awk "BEGIN {printf \"%.2f\", $Unauthorized_error_count * 100 / $total_count}")
Forbidden_error_percent=$(awk "BEGIN {printf \"%.2f\", $Forbidden_error_count * 100 / $total_count}")
Request_Timeout_error_percent=$(awk "BEGIN {printf \"%.2f\", $Request_Timeout_error_count * 100 / $total_count}")
Internal_Service_error_percent=$(awk "BEGIN {printf \"%.2f\", $Internal_Service_error_count * 100 / $total_count}")

# Print the results
echo "Number of successful responses: $success_percent"
echo "Percentage of success: $Bad_Request_error_percent%"
echo "Percentage of Unauthorized errors: $Unauthorized_error_percent%"
echo "Percentage of Forbidden errors: $Forbidden_error_percent%"
echo "Percentage of Request Timeout errors: $Request_Timeout_error_percent%"
echo "Percentage of Internal Service errors: $Internal_Service_error_percent%"
echo "Percentage of other errors: $other_error_percent%"
