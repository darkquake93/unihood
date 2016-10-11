# UNI-HOOD

# This is a proposal document for this "UniHood" project

##Abstract

Many low-cost cloud-computing resources and new free open-source software components are available and have reduced the costs that were associated with the creation of web-based software systems. Although a large team of IT professionals and expensive hardware and communications resources are no longer necessary, and can be replaced by just a few individuals, it’s still essential for those individuals to be able to identify which tools and resources will meet their needs. They must also know how to effectively combine these tools to build their proposed system.
This project is an attempt to itemise and instruct (in a “HOW-TO” fashion) one such combination of tools and resources that will allow a complete web application system to be built with minimal code, costs and manpower.
The project will address many of the considerations that are essential for real-world feasibility, such as Security, Source control, Issue management, Disaster Recovery, Scalability and Maintainability.
To achieve the above aims, I have chosen to build  system called “UniHood” which will allow a university community to review and comment on courses, their modules and lecturers in a more structured way than the typical forums and social networks.

##Background

###What stakeholders and topics are concerned?  

It’s important to recognise that the primary audience for this report is not the community users of UniHood, but it is rather any organisations or individuals who are interested to see how a complete web application system can be assembled with minimum cost and effort using open-source and cloud-based resources as far as possible. 

###What problem will you address?

There is a wide range of new tools which are becoming available, and one characteristic of the open-source environment is that each tool has a different owner, and so there is no one source that can guide effective use of these tools. This report attempts to provide at least one such guideline.

###Why is the project important? 

This work is particularly important given the cost-savings that are being achieved via cloud-based computing. Many individuals and organisations would find the deliverables of this project extremely valuable.

###What are the benefits to the stakeholders?  

Stakeholders should be able to use these instructions to build a completely different application.

###How does it relate to previous work and existing knowledge?

There is a long tradition of “HOW-TOs” in the open-source community, and some of these may have similar goals, however the range of available web-building tools and resources (such as Amazon AWS Free Tier and Google Single Sign-On) is evolving so rapidly that one might generate the same report in 10 months’ time and recommend better tools in it. 

##Aim and objectives 

###What will the project deliver? 

A collection of  HOW-TOs, where each task is one of the important steps required to build the system.

###Are there intermediate or enabling deliverables?

There are many intermediate deliverables, each of which is self-contained and may be of value to many different types of projects.
Some of these deliverables will be self-contained discussions of:

•	Authentication
•	Authorisation
•	Security
•	Configuration
•	Source control
•	Issue management
•	Backup
•	Disaster Recovery
•	Scalability
•	Productivity
•	Automated testing
•	Continuous Intergration
•	Continuous Delivery
•	Continuity of Service
 
##Technologies & Resources

###List the major resources required.  

•	Amazon AWS, MySql and other Online Documentation resources

###What technologies are you going to use?

•	For Cloud-Computing resources I expect to use various Amazon AWS Resources such as:
EC2 – Elastic Compute Cloud, dedicated to managing Amazon Virtual Machines.
S3 - Simple Storage Service, allows upload and download of very large files
EBS – Elastic Block Storage, mainly used for adding extra drives to currently running Virtual Machine instances.
- Elastic IPs – A concept in which static IPs are able to be assigned to an Amazon Account and because of their “elasticity”, provide a means of mapping this same IP straight to another instance when the previously IP assigned instance fails.

Ultimately, Amazon offers a “Free Tier” service which allows these resources to be used for free or very low-cost during the first year.
•	GitHub for Source Control and as a Cloud-Based repository of project documentation. This is a free service for Open-Source project work.
•	MySQL for database back-end
•	PuTTY as an SSH client
•	Programming language; expecting at this stage to review and select a suitable framework based on one of PHP, Python, Ruby or Perl.
•	HTML5 / CSS / Javascript for browser-side programming

###Where will your data come from?

Sample test data will have to be improvised according to the evolution of the project.

###Reasons clear? Alternatives mentioned?

The reasoning for this is that it is always impossible to speculate how the final database structure will come together, so as it evolves with the project so will the test data. No alternatives for the data source will be discussed nor will they be necessary; although this is a practical project it is also an Open Source one as stated earlier, which means the data cannot be limited to just one organisation (in this case Kingston University).

##Method & Work Plan

###How will you use the technologies and resources to achieve your aims?

A great deal of trial and error regarding the project setup’s HOW-TO will be applied, and this will give insight into their connection with the cloud-based resources. I will use these in an iterative fashion, examining how each part and attempt at the setup process will affect the database and its linkage with the website.

###Show the major phases of the project, milestones and deliverables. 
###Consider major risks and contingencies.
###Generate a schedule using a Gantt chart or similar. 
###Appropriate methods, Feasible & Complete
###Discussion regarding Ethics aspects, as well as data protection and safety relating to the project

##Intellectual Property Rights / Demonstrations / Access to Code



#Extra Notes
This project proposal aims to outline all objectives involved in the technical backend aspects of a practical website while aiming to minimise the associated costs. 
The objectives involved include setting up and managing a database environment (planning to use SQL Developer or similar), creation, configuration and connection to Virtual Machine (VM) instances (through Amazon Web Services), reservation of domain name through GoDaddy and its assignment to the UK registree.

Additional objectives regarding connection to the VM instance via an SSH client (PuTTY in this case) include a series of steps provided by Amazon on the "connection" window, and include implementation of private key files (both .pem and .ppk extensions) which provide a secure connection between PuTTY and the VM.

The significance of this work to my study of the Computer Science course is of utilising my existing skills to create a unique E-Learning system, unique in a way that it differs from my usual projects such as coded applications for external theoretical companies. At the same time, it will benefit the students of Kingston University through offering their lecturers insight as to which teaching methods / techniques are most effective, and is open for adaptation in the forseeable future. The only relation to previous work is the implementation of the database heirarchy, the majority consists of working with new cloud-based technologies and implementing the services like Virtual Machine management they offer. My existing knowledge of Virtual Machines and the like however, will be fully applied to the construction of this database-backed website.

By the completion of the website, there will be situations where problems may still arise and will need to be investigated promptly; for the purposes of the final report these will be investigated ahead of time. If for example there is a case to recreate a VM instance, then resolution via the "Elastic IP" concept and ip reset for the domain name on Godaddy will need to be addressed. My hyposthesis aims to test whether these problems can be resolved within a reasonable time that, theoretically, would not affect development of the main project; 

My project aims to:

Build a public facing database-backed website
Provide the tools and structure that would allow it to scale to higher complexity
Document all steps of the procedure in a way that will allow others to reach similar level of functionality, with minimal effort
Report, itemise and minimise any expenses
Minimise actual coding via maximum deployment of existing open-source components.
Provide system documentation
Extra Notes:

All steps are reported in the style of a massive "how-to" document, consisting of observations, recommendations on strengths and weaknesses of choices made. Currently this project is using this GitHub site as a base repositry.

I would like for my project to focus on an Amazon (Free Tier) virtual machine providing these functionalities and in particular the optimal / custom alterations of the machine's OS' specifications such as RAM, Hard Disk space (as well as the procedure of adding an extra virtual drive known as an Elastic Block Store (EBS) to the virtual machine and so on.

In terms of the actual business application to be modelled there is scope for this to change at this early stage, however the current construction project of a University E-Learning system will be the basis for now.

If disputes arise between myself and my Domain Name Registrar "Godaddy", then I would attempt to resolve this through contacting the UK registree about DNS settings needed to be handled by a different registrar.

I suggest that within 30 minutes these problems can be rectified via use of appropriate skills from the website creator (aka me).
