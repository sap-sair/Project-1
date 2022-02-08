# Project-1

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![image](https://user-images.githubusercontent.com/98505506/152916656-ccab6ffb-5778-4e1a-a522-f41e637d7344.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yaml file may be used to install only certain pieces of it, such as Filebeat.

  - [ELK Playbook](https://github.com/sap-sair/Project-1/blob/main/Ansible/elkvmconfig.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.
- What aspect of security do load balancers protect? - **_Load balancers protect againts DoS attacks_**
- What is the advantage of a jump box? - _**It manages all the devices in a different zone of security**_


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
- _**Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing**_
- _**Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash**_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.1.4   | Linux            |
| ElkVM    |Monitoring| 10.1.0.4   | Linux            |
| Web1     |Webserver | 10.0.0.4   | Linux            |
| Web2     |Webserver | 10.0.0.7   | Linux            |
| Web3     |Webserver | 10.0.0.8   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 136.52.112.168

Machines within the network can only be accessed by JumpBox.
- 136.52.112.168 - my personal machine

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 |    136.52.112.168    |
| ElkVM    | No                  |    10.0.1.0          |
| Web1     | No                  |    10.0.1.0          |
| Web2     | No                  |    10.0.1.0          |
| Web3     | No                  |    10.0.1.0          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _**You don’t need to install any other software or firewall ports on the client systems you want to automate.**_

The playbook implements the following tasks:
- _**Install docker.io**_
- _**Install pip3**_
- _**Install docker python module**_
- _**Launch docker**_

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Screenshot (114)](https://user-images.githubusercontent.com/98505506/152931896-2adb2035-7fef-479e-a7f8-8b220a836c4d.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

| Name     | IP Address | 
|----------|------------|
| Web1     | 10.0.0.4   | 
| Web2     | 10.0.0.7   | 
| Web3     | 10.0.0.8   | 

We have installed the following Beats on these machines:
- _**Filebeat**_
- _**Metricbeat**_

These Beats allow us to collect the following information from each machine:
- _**Filebeat**_ monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
- _**Metricbeat**_ takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash.


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook.yml and/or metricbeat-playbook.yml file(s) to roles directory.
- Update the hosts file to include IPs of each group (Web1, Web2, etc.)
- Run the playbook, and navigate to Kibana on 13.67.185.129:5601/app/kibana to check that the installation worked as expected.

**FILEBEAT**
![Screenshot (117)](https://user-images.githubusercontent.com/98505506/152934107-0cb16715-5b2b-4e4e-9f76-eced9893c868.png)

**METRICBEAT**
![Screenshot (118)](https://user-images.githubusercontent.com/98505506/152934185-73999d63-2013-4bda-8514-53e0ea3e0e5e.png)

