# L.A.R.A - Local Automated Response Assistant 🚀

L.A.R.A is a fully automated infrastructure and application deployment project designed to showcase modern DevOps practices.

## 🛠 Tech Stack
* *Infrastructure:* Ansible (Configuration Management)
* *Containerization:* Docker & Docker Compose
* *CI/CD:* GitHub Actions
* *Backend:* Python (Flask)
* *Monitoring:* Custom Bash Health-Check Scripts

## 🏗 Project Architecture
1. *Automated Setup:* Ansible playbooks configure the VM environment.
2. *Containerized App:* Flask application runs inside Docker for consistency.
3. *Self-Healing:* A cron-job based monitor script ensures the app is always up.
4. *Pipeline:* Code changes are automatically pushed and validated via GitHub Actions.

## 🚀 How to Run
1. Clone the repo: git clone https://github.com/AnuragUtkarsh/LARA-Project.git
2. Run Ansible: ansible-playbook ansible/setup.yml
3. Start App: docker-compose up -d
