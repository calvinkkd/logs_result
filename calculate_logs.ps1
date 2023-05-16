#!/bin/bash

# Define counters for each number
count_401=0
count_500=0
count_403=0
count_408=0
total_count=0

# Read the data file line by line
while IFS='::' read -r number _; do
  case "$number" in
    401)
      ((count_401++))
      ;;
    500)
      ((count_500++))
      ;;
    403)
      ((count_403++))
      ;;
    408)
      ((count_408++))
      ;;
  esac
  ((total_count++))
done < data.txt

# Calculate the percentages using PowerShell
percent_401=$(powershell -Command "[math]::Round(($count_401 * 100 / $total_count), 2)")
percent_500=$(powershell -Command "[math]::Round(($count_500 * 100 / $total_count), 2)")
percent_403=$(powershell -Command "[math]::Round(($count_403 * 100 / $total_count), 2)")
percent_408=$(powershell -Command "[math]::Round(($count_408 * 100 / $total_count), 2)")

# Display the results
echo "Percentage of 401: $percent_401%"
echo "Percentage of 500: $percent_500%"
echo "Percentage of 403: $percent_403%"
echo "Percentage of 408: $percent_408%"
#!/bin/bash

# Define counters for each number
count_401=0
count_500=0
count_403=0
count_408=0
count_200=0
total_count=0

# Read the data file line by line
while IFS='::' read -r number _; do
  case "$number" in
    401)
      ((count_401++))
      ;;
    500)
      ((count_500++))
      ;;
    403)
      ((count_403++))
      ;;
    408)
      ((count_408++))
      ;;
    200)
      ((count_200++))
    
  esac
  ((total_count++))
done < data.txt

# Calculate the percentages using PowerShell
percent_401=$(powershell -Command "[math]::Round(($count_401 * 100 / $total_count), 2)")
percent_500=$(powershell -Command "[math]::Round(($count_500 * 100 / $total_count), 2)")
percent_403=$(powershell -Command "[math]::Round(($count_403 * 100 / $total_count), 2)")
percent_408=$(powershell -Command "[math]::Round(($count_408 * 100 / $total_count), 2)")

# Display the results
echo "Percentage of Unauthorized: $percent_401%"
echo "Percentage of Internal_Service_Error: $percent_500%"
echo "Percentage of Forbidden: $percent_403%"
echo "Percentage of Request_Timeout: $percent_408%"
echo "Percentage of Bad_Request: $percent_400%"
