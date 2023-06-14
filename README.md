# Automated-Nuclie-Scan

I have developed an automated bash script where Nuclei scan(Fast and customizable vulnerability scanner based on simple YAML based DSL.) will be carried out on each subdomain of a target & notified the all critical/high/medium & low issues on slack channel on-demand scan.

# Prerequisite:
- [subfinder](https://github.com/projectdiscovery/nuclei)
- [httpx](https://github.com/projectdiscovery/httpx)
- [nuclei](https://github.com/projectdiscovery/nuclei)
- *target_list.txt* file where lists of the domain are maintained which are to be scan like below

# How to Execute:
-	Download/Clone the script in your system
-	Make sure you have already installed prerequisites
-	Ensure that you have target domains in target_list.txt file
-	Run the downloded scripts
