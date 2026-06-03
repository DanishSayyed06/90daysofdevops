# Day 20 – Bash Scripting Challenge: Log Analyzer and Report Generator

### Task 1: Input and Validation
Your script should:
1. Accept the path to a log file as a command-line argument
2. Exit with a clear error message if no argument is provided
3. Exit with a clear error message if the file doesn't exist



--- 

### Task 2: Error Count
1. Count the total number of lines containing the keyword `ERROR` or `Failed`
2. Print the total error count to the console

<img width="630" height="154" alt="1" src="https://github.com/user-attachments/assets/29d5b4bd-b564-48b1-8ebb-c2eba5ee39b2" />

<img width="708" height="112" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM" src="https://github.com/user-attachments/assets/e5f0c9ef-86c8-484e-a77e-aee25d9d5a5a" />

---

### Task 3: Critical Events
1. Search for lines containing the keyword `CRITICAL`
2. Print those lines along with their line number

<img width="579" height="134" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM (3)" src="https://github.com/user-attachments/assets/7a1649eb-9aa5-4139-bf43-731823c6abe6" />

<img width="778" height="169" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM (2)" src="https://github.com/user-attachments/assets/ec16e461-e9c6-445c-9275-34d86d50ac98" />


--- 


### Task 4: Top Error Messages
1. Extract all lines containing `ERROR`
2. Identify the **top 5 most common** error messages
3. Display them with their occurrence count, sorted in descending order

<img width="696" height="131" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM (5)" src="https://github.com/user-attachments/assets/ab48e762-ae42-454b-93bb-61226b0a9ecc" />

<img width="867" height="287" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM (4)" src="https://github.com/user-attachments/assets/3e93d74a-1a5e-4f8b-9654-14754b795795" />

---

### Task 5: Summary Report
Generate a summary report to a text file named `log_report_<date>.txt` (e.g., `log_report_2026-02-11.txt`). The report should include:
1. Date of analysis
2. Log file name
3. Total lines processed
4. Total error count
5. Top 5 error messages with their occurrence count
6. List of critical events with line numbers

<img width="1009" height="803" alt="Screenshot 2026-06-03 224036" src="https://github.com/user-attachments/assets/168c4d46-7065-4c04-b954-9ea581abd6c1" />

<img width="985" height="661" alt="Screenshot 2026-06-03 224109" src="https://github.com/user-attachments/assets/292a546e-d743-479e-9c53-2ef398a1a69e" />

--- 


### Task 6 (Optional): Archive Processed Logs
Add a feature to:
1. Create an `archive/` directory if it doesn't exist
2. Move the processed log file into `archive/` after analysis
3. Print a confirmation message

<img width="1003" height="979" alt="WhatsApp Image 2026-06-03 at 9 28 40 PM (11)" src="https://github.com/user-attachments/assets/fd99158d-8d38-41a3-bd48-2ec3b9ada49c" />


---
