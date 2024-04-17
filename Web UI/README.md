# Oxford Nanopore | RNA Analysis Tool
### Welcome to the Oxford Nanopore RNA Analysis Tool repository!

## Overview
This repository contains the source code for our web application designed to simplify RNA sequence analysis using Oxford Nanopore sequencing data. Our goal is to provide a user-friendly interface that enables researchers, regardless of their programming background, to analyze RNA data efficiently and effectively.
## Features

- **User-Friendly Interface:** Our web application offers an intuitive interface designed for ease of use.
- **Nanopore Sequencing Support:** Analyze RNA data generated from Oxford Nanopore sequencing technology.
- **Simple Workflow:** Perform various analyses and visualizations with just a few clicks.
- **Accessible to Non-Programmers:** No programming knowledge required. Anyone can analyze RNA data effortlessly.
- **Interactive Visualizations:** Explore your RNA data through interactive charts and graphs.


## Getting Started

To get started with our RNA Analysis Tool, follow these steps:

1. Clone this repository to your local machine.
   ```
   git clone https://github.com/KushanManahara/Oxford-Nanopore-RNA-Analysis-Tool.git
   ```
3. Navigate into the project repository.
   ```
   cd Oxford-Nanopore-RNA-Analysis-Tool
   ```
4. Create a virtual environment (not necessary)

   In Windows
   ```
   python -m venv venv
   ```
   
   In Linux/MacOS
   ```
   python3 -m venv venv
   ```
6. Install the necessary dependencies as specified in the `requirements.txt` file.
   ```
   pip install -r requirements.txt
   ```
7. Run the web application using your preferred web server.
   ```
   streamlit run app.py
   ```
## Usage Instructions
- Log in to your server using the provided `host` `username` and `password`.
- Navigate to the **blasting page**.
- Upload your `raw files` as a `.zip` file. The zip file should contain two files, one starting with `'pass_'` and the other with `'fail_'`.
- The pipeline will run, generating the final blasting output as a zip file, which includes the **final blasting report**, **Venn diagram**, and **quality analysis report**.
## Contributing

We welcome contributions from the community! If you'd like to contribute to the development of the Oxford Nanopore RNA Analysis Tool, please fork this repository, make your changes, and submit a pull request.
## Support

If you encounter any issues or have any questions about using the Oxford Nanopore RNA Analysis Tool, please [open an issue](https://github.com/example/repository/issues) on this repository.## License


This project is licensed under the [MIT License](LICENSE).

## Tech Stack

- Python
- Streamlit


## 🚀 About Me
### Kushan Manahara

I'm a final year undergraduate student pursuing Computer Engineering at the University of Peradeniya. My passion lies in research, AI development, and automation. I thrive on exploring new technologies and pushing the boundaries of what's possible in the realm of artificial intelligence.

Whether it's diving into the intricacies of machine learning algorithms or crafting seamless user experiences through full stack development, I'm driven by a relentless curiosity and a desire to make meaningful contributions to the field of technology.

Feel free to reach out if you'd like to collaborate on exciting projects or discuss ideas at the intersection of technology and innovation.

Connect with me on [LinkedIn](Your_LinkedIn_Profile_URL) | Follow me on [Twitter](Your_Twitter_Profile_URL)

## 🛠 Skills
- **Full Stack Development**
- **LLM Development** (Large Language Models)
- **ML Development** (Machine Learning)
## Authors

- [@KushanManahara](https://github.com/KushanManahara/)
## Badges
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)

## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://vercel.com/kushan-manaharas-projects/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/kushan-manahara/)

## Screenshots

- ### Login Page ![App Screenshot](https://github.com/KushanManahara/Oxford-Nanopore-RNA-Analysis-Tool/assets/73605929/4f9939fa-db98-435b-a109-1a31945a5f02)

- ### Blasting Page ![blasting page](https://github.com/KushanManahara/Oxford-Nanopore-RNA-Analysis-Tool/assets/73605929/7a41c018-5716-4b2f-9b76-31fd2ed239e2)
