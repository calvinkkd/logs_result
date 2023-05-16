

# How to Run the Bash Script
This guide will explain how to run the calculate_errors.sh Bash script on Mac or Linux command line.

# Prerequisites
Before running the script, ensure that you have the following:

> A Mac or Linux operating system.
The calculate_errors.sh script file.
A log file named logs.txt in the same directory as the script file. The log file should contain the relevant data for analysis.
# Instructions
> Follow these steps to run the Bash script:

1. Open the terminal on your Mac or Linux system.

2. Navigate to the directory where the calculate_errors.sh script is located. You can use the cd command to change directories. For example, if the script is located in the /path/to/scripts/ directory, run the following command:

```bash
  cd /path/to/scripts/
```

3. Ensure that the script file has executable permissions. If not, run the following command to grant execute permissions:

```bash
chmod +x calculate_errors.sh
```

4. Run the script by entering the following command:

```bash
./calculate_errors.sh
```
This command executes the script and starts processing the logs.txt file.

5. Wait for the script to finish processing the log file. Once completed, the script will display the results on the terminal.

The output will include the following information:

```bash
Number of successful responses
Percentage of success
Percentage of Bad Request errors
Percentage of Unauthorized errors
Percentage of Forbidden errors
Percentage of Request Timeout errors
Percentage of Internal Service errors
Percentage of other errors
```

Example output:

```bash
Number of successful responses: 500
Percentage of success: 70.00%
Percentage of Bad Request errors: 5.00%
Percentage of Unauthorized errors: 2.50%
Percentage of Forbidden errors: 1.00%
Percentage of Request Timeout errors: 1.50%
Percentage of Internal Service errors: 2.00%
Percentage of other errors: 18.00%
```

6. You have successfully run the calculate_errors.sh script and obtained the error analysis results.

Note: Make sure that the logs.txt file is present in the same directory as the script file and contains the relevant data for analysis. If the log file is located elsewhere or has a different name, modify the script accordingly by updating the logs.txt file path in the script.
