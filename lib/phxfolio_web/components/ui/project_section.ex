defmodule PhxfolioWeb.UI.ProjectSection do
  use Phoenix.Component

  alias PhxfolioWeb.Struct.Project

  @projects [
    %Project{
      title: "ByteMesh",
      subtitle: "Distributed File Storage System",
      image:
        "https://imgs.search.brave.com/IzNP4rlIXOEh3H9Ie_MX_mD5JYE8SK51sOKn-p90QVo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS12ZWN0b3Iv/b3JnYW5pemluZy1w/cm9qZWN0cy1jb25j/ZXB0LWlsbHVzdHJh/dGlvbl8xMTQzNjAt/NTQyLmpwZz9zZW10/PWFpc19oeWJyaWQm/dz03NDA",
      technologies: ["Golang", "Python", "JavaScript", "Bash", "HTML5/CSS3", "MongoDB", "JWT", "Selenium"],
      github: %{Github: "https://github.com/AdityaByte/ByteMesh.git"},
      description:
        "ByteMesh is a scalable distributed file storage system built using Golang and its standard packages. It supports both CLI and web-based interfaces for uploading, distributing, and retrieving files."
    },
    %Project{
      title: "Connect",
      subtitle: "Chat Application",
      image:
        "https://imgs.search.brave.com/IzNP4rlIXOEh3H9Ie_MX_mD5JYE8SK51sOKn-p90QVo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS12ZWN0b3Iv/b3JnYW5pemluZy1w/cm9qZWN0cy1jb25j/ZXB0LWlsbHVzdHJh/dGlvbl8xMTQzNjAt/NTQyLmpwZz9zZW10/PWFpc19oeWJyaWQm/dz03NDA",
      technologies: ["Java", "Spring Boot", "Kafka", "Redis", "React", "Redux", "JUnit", "Mockito"],
      github: %{
        Frontend: "https://github.com/AdityaByte/Connect-Frontend",
        Backend: "https://github.com/AdityaByte/Connect-Backend-SpringBoot"
      },
      description:
        "Connect is a real-time chat application built with Spring Boot and React, enabling seamless communication through WebSockets, Kafka, and Redis. It features a responsive UI and supports both group and private messaging with fast, reliable delivery",
      live: %{Live: "https://connect-frontend-omega.vercel.app/"}
    },
    %Project{
      title: "Uniqueness Verifier",
      subtitle: "Multilingual Title Verification • Smart India Hackathon 2024",
      image: "https://imgs.search.brave.com/IzNP4rlIXOEh3H9Ie_MX_mD5JYE8SK51sOKn-p90QVo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS12ZWN0b3Iv/b3JnYW5pemluZy1w/cm9qZWN0cy1jb25j/ZXB0LWlsbHVzdHJh/dGlvbl8xMTQzNjAt/NTQyLmpwZz9zZW10/PWFpc19oeWJyaWQm/dz03NDA",
      technologies: [
        "Spring Boot (WebFlux)",
        "React",
        "Python Flask",
        "XLM‑R DistilRoBERTa",
        "MongoDB",
        "Docker"
      ],
      description:
        "Uniqueness Verifier is a multilingual title validation system built for Smart India Hackathon 2024. It detects similar or conflicting titles using phonetics, banned terms, and semantic analysis via XLM-R DistilRoBERTa. Built with Spring Boot WebFlux, React, and Flask, deployed on Vercel and Render.",
      live: %{Live: "https://press-title-verification-system.vercel.app/"}
    }

  ]

  def section(assigns) do
    assigns = assign(assigns, projects: @projects)

    ~H"""
    <section class="w-full px-3 lg:px-0 py-20" id="projects">
      <h2 class="text-white text-3xl font-bold mb-10 text-center">🧱 Projects</h2>

      <%= for project <- @projects do %>
        <div class="bg-gradient-to-b from-white/10 to-white/5 backdrop-blur-md rounded-2xl border border-white/10 p-8 shadow-2xl w-full max-w-5xl mx-auto text-white flex flex-col gap-6 my-6 ">
          <div class="flex gap-4 items-center">
            <img
              src={project.image}
              alt="Project Logo"
              class="w-12 h-12 rounded-full ring-2 ring-white/30 shadow-md"
            />
            <div>
              <h3 class="text-xl font-semibold">{project.title}</h3>

              <p class="text-sm text-white/60">{project.subtitle}</p>
            </div>
          </div>

          <div>
            <h4 class="text-white/80 font-semibold mb-1">📄 Description</h4>

            <p class="text-sm text-white/70 leading-relaxed">
              {project.description}
            </p>
          </div>

          <div>
            <h4 class="text-white/80 font-semibold mb-2">🛠 Technologies Used</h4>

            <div class="flex flex-wrap gap-2">
              <%= for tech <- project.technologies do %>
                <span class="bg-white/10 px-3 py-1 rounded-full text-sm">{tech}</span>
              <% end %>
            </div>
          </div>

          <div class="flex items-center gap-3 mt-2 flex-wrap">
            <h4 class="text-white/80 font-semibold">🔗 Links</h4>

            <%= if is_map(project.github) do %>
              <%= for {label, url} <- project.github do %>
                <a
                  href={url}
                  target="_blank"
                  class="text-sm bg-white/10 hover:bg-white/20 transition px-3 py-1 rounded-full border border-white/10"
                >
                  <%= label %>
                </a>
              <% end %>
            <% end %>

            <%= if is_map(project.live) do %>
              <%= for {label, url} <- project.live do %>
                <a
                  href={url}
                  target="_blank"
                  class="text-sm bg-white/10 hover:bg-white/20 transition px-3 py-1 rounded-full border border-white/10"
                >
                  <%= label %>
                </a>
              <% end %>
            <% end %>
          </div>

        </div>
      <% end %>
    </section>
    """
  end
end
