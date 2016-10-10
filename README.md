# UNI-HOOD

This is a proposal document for this "UniHood" project

### Abstract:

### Introduction and Background:
I am proposing, for my "Uni-Hood" project, to outline all objectives involved in the technical backend aspects of a practical website while aiming to minimise the associated costs. This website will allow a university community to review and comment on courses, their modules and lecturers in a more structured way than the typical forums and social networks. Hence the stakeholders are myself, the students and the lecturers.

The objectives involved include setting up and managing a database environment (planning to use SQL Developer or similar), creation, configuration and connection to Virtual Machine (VM) instances (through Amazon Web Services), reservation of domain name through GoDaddy and its assignment to the UK registree.

Additional objectives regarding connection to the VM instance via an SSH client (PuTTY in this case) include a series of steps provided by Amazon on the "connection" window, and include implementation of private key files (both .pem and .ppk extensions) which provide a secure connection between PuTTY and the VM. 

The significance of this work to my study of the Computer Science course is of utilising my existing skills to create a unique E-Learning system, unique in a way that it differs from my usual projects such as coded applications for external theoretical companies. At the same time, it will benefit the students of Kingston University through offering their lecturers insight as to which teaching methods / techniques are most effective, and is open for adaptation in the forseeable future. The only relation to previous work is the implementation of the database heirarchy, the majority consists of working with new cloud-based technologies and implementing the services like Virtual Machine management they offer. My existing knowledge of Virtual Machines and the like however, will be fully applied to the construction of this database-backed website.

By the completion of the website, there will be situations where problems may still arise and will need to be investigated promptly; for the purposes of the final report these will be investigated ahead of time. If for example there is a case to recreate a VM instance, then resolution via the "Elastic IP" concept and ip reset for the domain name on Godaddy will need to be addressed. My hyposthesis aims to test whether these problems can be resolved within a reasonable time that, theoretically, would not affect development of the main project; I suggest that within 30 minutes these problems can be rectified via use of appropriate skills from the website creator (aka me).

### Aims and Objectives:



### Technologies and Resources:


### Method and Workplan:


### Ethics / Data Protection / Safety:

My project aims to:

- Build a public facing database-backed website
- Provide the tools and structure that would allow it to scale to higher complexity 
- Document all steps of the procedure in a way that will allow others to reach similar level of functionality, with minimal effort
- Report, itemise and minimise any expenses
- Minimise actual coding via maximum deployment of existing open-source components. 
- Provide system documentation
- Address and Implement concepts such as:
    
    - Authentication
    - Authorisation
    - Security
    - Configuration
    - Source control
    - Issue management
    - Backup
    - Disaster Recovery
    - Scalability
    - Productivity
    - Automated testing
    - Continuous Intergration
    - Continuous Delivery

### Extra Notes:

All steps are reported in the style of a massive "how-to" document, consisting of observations, recommendations on strengths and weaknesses of choices made. Currently this project is using this GitHub site as a base repositry.

I would like for my project to focus on an Amazon (Free Tier) virtual machine providing these functionalities and in particular the optimal / custom alterations of the machine's OS' specifications such as RAM, Hard Disk space (as well as the procedure of adding an extra virtual drive known as an Elastic Block Store (EBS) to the virtual machine and so on.

In terms of the actual business application to be modelled there is scope for this to change at this early stage, however the current construction project of a University E-Learning system will be the basis for now.

If  disputes arise between myself and my Domain Name Registrar "Godaddy", then I would attempt to resolve this through contacting the UK registree about DNS settings needed to be handled by a different registrar. 
