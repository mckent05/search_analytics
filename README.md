<a name="readme-top"></a>
<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
     <img src="https://avatars.githubusercontent.com/u/73607512?v=4" alt="signature" >
  <br/>

  <h3><b>SEARCH ANALYICS</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 PERSONAL INVENTORY ](#-personal-inventory-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🛠 Development Process ](#development-process)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Search Analytics App <a name="about-project"></a>


"**The Search analytics app** is a simple web application designed to record user search results in real-time and provide analytics on user search queries and user interactions. It efficiently captures search data, analyses it, and present insights to users. Otlined below are aspects of the app, including its description, tech stack, development process, features, and how search inputs are recorded in real-time."

## Real-time Search Input Recording:
To record search inputs in real-time, the Search analytics app employs techniques such as AJAX requests. Here's a simplified explanation of how it works:

**Client-Side Interaction:** When a search is perfomed on the app, a JavaScript code on the frontend captures the search query. When a user types into the search bar, the input value is recorded immediately

**AJAX Request:** The frontend sends an AJAX request to the backend server, containing the search query data.
**Backend Processing:** The backend server receives the request, processes the search query, and stores it in the database.

## Live Demo & Presentation <a name="live-demo">

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

The Search analytics app utilizes a modern tech stack to ensure reliability, scalability, and performance. Some of the technologies and frameworks used in its development include:

**Frontend:** HTML, CSS, JavaScript
**Backend:** Ruby on Rails for server-side logic and API endpoints
**Database:** PostgreSQL or MySQL for storing search data and analytics
<!-- <details>
  <summary>Ruby on Rails</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://guides.rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>  -->


<!-- Features -->

### Key Features <a name="key-features"></a>

- **Real-time Search Recording:** Captures search queries and user interactions as they occur in real-time.
- **Analytics Dashboard:** Provides visualizations and insights into popular search trends and behavior.
- **IP Tracking:** Records the IP addresses of users making search queries to identify geographic trends and patterns.
- **Query Ranking:** Ranking search queries based on popularity and frequency.
- **Intrinsic User-Interface**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DEVELOPMENT PROCESS -->
## 💻 Development Process: <a name="development-process"></a>

The development of the Search analytics app was implemented by a process that involved:

- **Requirements Gathering:** Understanding the requirements of the project and knowing what was required
- **Design and Prototyping:** Creating wireframes and prototypes to visualize the user interface and interactions.
- **Development:** 
  - Code Quality: Writing clean code for frontend and backend components, implementing features through the use of appopriate linters.    
  - Branching Model: Using Gitflow branching model, to establish a clear and organized workflow for feature development, testing, and deployment, ensuring code quality and stability throughout the development lifecycle.
- **Testing:** Conducting rspec tests, to ensure the app functions correctly and meets requirements.
- **Deployment:** Deploying the app to a production environment, using Render.
- **Monitoring and Maintenance:** Monitoring app performance, addressing bugs and issues.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:


- Code editor like VS code
- Ruby installed in your machine


### Setup

Clone this repository to your desired folder:


```sh
   git clone https://github.com/mckent05/search_analytics.git
   cd search-analytics
```


### Install

Install this project with:


```sh
  cd search_analytics
  gem install
```

```sh
 bundle install
```


### Usage

To run the project, execute the following command:

Enter the credentials for your database locally in the ```./config/database.yml``` file

```sh
  rails db:setup
```


```sh
  rails server
```

### Run Tests
To run tests, run the following command:
```
  rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>



👤 **Eloghene Otiede**

- GitHub: [@githubhandle](https://github.com/mckent05)
- Twitter: [@twitterhandle](https://twitter.com/mckent05)
- LinkedIn: [LinkedIn](https://linkedin.com/in/temitopeakinlade)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/mckent05/search_analytics/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project drop a ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>


My appreciations to [Helpjuice](https://helpjuice.com/) for inspiring this project

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./mit.md) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
