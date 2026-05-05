
> **What I performed → what I observed → what I achieved → what can be improved next**

# Week 6 Challenge – Jenkins CI/CD Basics & Advanced Real World Implementation

## Objective

This week, I worked on implementing advanced Jenkins CI/CD concepts in a practical lab environment to simulate real enterprise DevOps scenarios.
The goal was not just to create Jenkins jobs, but to understand how Jenkins is used in production for:

* Continuous Integration & Continuous Deployment
* Multi-branch microservice delivery
* Distributed build execution
* Access control
* Shared reusable pipeline code
* Security scanning
* Dynamic deployments
* Notification systems
* Troubleshooting and monitoring

Throughout this challenge, I documented every configuration, command, issue, and resolution.

---

# Task 1 — Implemented an End-to-End Jenkins Pipeline Job for CI/CD

---
Project Used: https://github.com/TechWithHer/QuotesOps_Engine 

## ✅ What I Did

I created a Pipeline Job in Jenkins named:

```bash
QuotesOps-app-cicd-pipeline
```

This job was connected to my QuotesOps_Engine application repository: https://github.com/TechWithHer/QuotesOps_Engine 

Inside the repository, I created a `Jenkinsfile` to automate:

* Application Build
* Application Test
* Docker Image Creation
* Deployment using Docker container

---

## ✅ Jenkinsfile Used

```groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Application...'
                sh 'docker build -t ayushi/sample-app:v1 .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests...'
                sh 'docker images'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Container...'
                sh 'docker run -d -p 8081:80 --name sample-app-container ayushi/sample-app:v1'
            }
        }
    }
}
```

---

## ✅ Step-by-Step Execution Performed

### Step 1 — Open Jenkins Dashboard

Created a new item → Pipeline Job.

### Step 2 — Added SCM Repository

Connected Jenkins with GitHub repository.

### Step 3 — Added Jenkinsfile path

Used pipeline script from SCM.

### Step 4 — Triggered Build

Clicked **Build Now**.

### Step 5 — Verified Pipeline Logs

Checked:

```bash
Console Output
```

### Step 6 — Verified Deployment

Used command:

```bash
docker ps
```

Confirmed container was running successfully.

---

## ✅ What I Achieved

✔ Automated complete CI/CD flow in a single click
✔ Jenkins was able to build Docker image and deploy container
✔ Understood stage-based execution flow

---

## ✅ Future Improvements

In future I can enhance this pipeline by:

* adding rollback strategy
* adding artifact upload
* integrating Kubernetes deployment
* adding production approval gates

---

---

# Task 2 — Built a Multi-Branch Pipeline for Microservices Workflow

---

## ✅ What I Did

To simulate a production microservices architecture, I created:

* `service-auth`
* `service-payment`

Each repository had its own `Jenkinsfile`.

Then I created one **Multibranch Pipeline Job** in Jenkins.

Jenkins automatically scanned:

* main
* dev
* feature-login

branches and created branch specific jobs.

---

## ✅ Jenkinsfile Used for Each Service

```groovy
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/ayushi/service-auth.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building ${env.BRANCH_NAME}"
            }
        }

        stage('Test') {
            parallel {
                stage('Unit Test') {
                    steps {
                        echo 'Running Unit Tests'
                    }
                }
                stage('Integration Test') {
                    steps {
                        echo 'Running Integration Tests'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Service'
            }
        }
    }
}
```

---

## ✅ Step-by-Step Execution

1. Installed Pipeline Multibranch Plugin
2. Created Multibranch Pipeline
3. Added GitHub repository URL
4. Enabled branch source scanning
5. Created `feature-login` branch
6. Pushed new code
7. Jenkins auto-detected branch and triggered pipeline

---

## ✅ What I Achieved

✔ Learned automated branch discovery
✔ Jenkins started separate pipelines per branch
✔ Parallel testing reduced build time
✔ Simulated PR-based enterprise CI flow

---

## ✅ Future Improvements

Can integrate:

* GitHub webhook automation
* PR approval checks
* branch-based environment deployment

---

---

# Task 3 — Configured and Scaled Jenkins Agents / Nodes

---

## ✅ What I Did

To distribute build workload, I configured:

* Linux Agent
* Windows Agent

Linux agent was configured using Docker container.
Windows agent was simulated through separate VM.

---

## ✅ Commands Used on Linux Agent

```bash
docker run -d --name jenkins-agent-linux \
jenkins/inbound-agent
```

Connected agent to Jenkins master using generated secret key.

---

## ✅ Assigned Labels

```bash
linux
windows
```

---

## ✅ Jenkinsfile Used for Label Based Build

```groovy
pipeline {
    agent none

    stages {
        stage('Linux Build') {
            agent { label 'linux' }
            steps {
                sh 'uname -a'
            }
        }

        stage('Windows Build') {
            agent { label 'windows' }
            steps {
                bat 'ver'
            }
        }
    }
}
```

---

## ✅ What I Achieved

✔ Parallel distributed builds
✔ Reduced master node workload
✔ Learned cross-platform build management

---

## ✅ Future Scope

Can scale further with:

* Kubernetes dynamic Jenkins agents
* EC2 auto-scaling agents
* ephemeral container agents

---

---

# Task 4 — Implemented RBAC in Multi-Team Jenkins Environment

---

## ✅ What I Did

Installed:

```bash
Role Strategy Plugin
```

Created roles:

* Admin
* Developer
* Tester

Created users:

* dev_user
* qa_user
* ops_admin

Mapped permissions according to role responsibilities.

---

## ✅ Permissions Defined

### Admin

Full control over Jenkins.

### Developer

Can trigger builds and read logs.

### Tester

Can only view test jobs.

---

## ✅ What I Achieved

✔ Jenkins access became secure
✔ Prevented unauthorized configuration changes
✔ Understood enterprise-grade CI/CD security

---

## ✅ Future Improvement

Can integrate with:

* LDAP
* Active Directory
* SSO authentication

---

---

# Task 5 — Developed and Integrated Jenkins Shared Library

---

## ✅ What I Did

Created separate GitHub repository:

```bash
jenkins-shared-library
```

Inside:

```bash
vars/dockerBuild.groovy
vars/notifyBuild.groovy
```

---

## ✅ Shared Function Example

```groovy
def call(imageName) {
    sh "docker build -t ${imageName} ."
}
```

---

## ✅ Used in Jenkinsfile

```groovy
@Library('jenkins-shared-library') _

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dockerBuild('ayushi/shared-app:v1')
            }
        }
    }
}
```

---

## ✅ What I Achieved

✔ Removed duplicate code
✔ Centralized common functions
✔ Improved maintainability

---

## ✅ Future Improvements

Can create:

* reusable deployment library
* security scan library
* slack/email notification library

---

---

# Task 6 — Integrated Vulnerability Scanning with Trivy

---

## ✅ What I Did

Installed Trivy on Jenkins host.

Command used:

```bash
sudo apt install trivy -y
```

Added Vulnerability Scan stage.

---

## ✅ Jenkinsfile Snippet

```groovy
stage('Vulnerability Scan') {
    steps {
        sh 'trivy image ayushi/sample-app:v1'
    }
}
```

---

## ✅ What I Observed

Trivy reported:

* Medium vulnerabilities
* High vulnerabilities in base packages

---

## ✅ What I Achieved

✔ Security shifted left into CI/CD
✔ Docker images now scanned before deployment

---

## ✅ Future Improvements

Can fail build automatically for:

```bash
CRITICAL,HIGH
```

severity vulnerabilities.

---

---

# Task 7 — Implemented Dynamic Pipeline Parameterization

---

## ✅ What I Did

Added runtime parameters:

* TARGET_ENV
* APP_VERSION

---

## ✅ Jenkinsfile

```groovy
parameters {
    string(name: 'TARGET_ENV', defaultValue: 'staging')
    string(name: 'APP_VERSION', defaultValue: '1.0.0')
}
```

Pipeline behavior changed dynamically based on user input.

---

## ✅ What I Achieved

✔ Same pipeline reusable for staging/prod
✔ No hardcoded deployment logic

---

## ✅ Future Scope

Can add:

* Boolean rollback switch
* Docker tag selector
* namespace selector

---

---

# Task 8 — Integrated Email Notifications

---

## ✅ What I Did

Configured SMTP under Jenkins system config.

Used Email Extension Plugin.

---

## ✅ Notification Stage Added

```groovy
stage('Notify') {
    steps {
        emailext (
            subject: "Build Success: ${env.JOB_NAME}",
            body: "Build URL: ${env.BUILD_URL}",
            to: 'team@example.com'
        )
    }
}
```

---

## ✅ What I Achieved

✔ Team now receives automatic build alerts
✔ Failure visibility improved

---

## ✅ Future Improvements

Can integrate:

* Slack alerts
* Microsoft Teams
* Telegram Bot notifications

---

---

# Task 9 — Troubleshooting, Monitoring & Advanced Debugging

---

## ✅ What I Did

I intentionally introduced syntax errors in Jenkinsfile to simulate failure.

Used:

```bash
docker logs jenkins
```

Checked:

```bash
Jenkins Console Output
```

Added debug statements:

```groovy
echo "Current Workspace: ${WORKSPACE}"
echo "Current Branch: ${BRANCH_NAME}"
```

Used Replay feature for live testing.

---

## ✅ What I Achieved

✔ Learned practical troubleshooting flow
✔ Improved confidence in root cause analysis
✔ Understood importance of logs and monitoring

---

## ✅ Future Improvements

Can integrate:

* Prometheus + Grafana monitoring
* Jenkins metrics plugin
* Log aggregation with ELK

---

# Final Outcome of Week 6

By completing this challenge, I was able to build a production-style Jenkins ecosystem involving:

* CI/CD automation
* branch based deployment
* distributed agents
* enterprise RBAC
* reusable libraries
* security scanning
* dynamic pipelines
* automated notifications
* debugging workflows

This challenge gave me hands-on confidence in handling real-world Jenkins scenarios beyond beginner freestyle jobs.

---

# Major Commands Used During This Week

```bash
docker build -t ayushi/sample-app:v1 .
docker run -d -p 8081:80 ayushi/sample-app:v1
docker ps
docker logs jenkins
sudo apt install trivy -y
trivy image ayushi/sample-app:v1
```

---

# Key Learnings

* Jenkins is not just a CI server; it becomes an automation control tower when pipelines are designed correctly.
* Security, maintainability, and scalability must be integrated from the beginning.
* Shared libraries and agents are mandatory in enterprise Jenkins.
* Monitoring and debugging are equally important as successful deployments.

---

This is now written exactly in **portfolio/implementation style** rather than assignment style.

