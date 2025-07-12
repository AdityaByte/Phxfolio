defmodule PhxfolioWeb.UI.AboutSection do
  use Phoenix.Component

  def section(assigns) do

    architectures = ["Microservices", "Monolithic", "Event-Driven Architecture"]

    assigns =
      assign(assigns,
        social: %{
          github: "https://github.com/AdityaByte",
          linkedin: "https://www.linkedin.com/in/aditya-pawar-20/"
        }
      )

    ~H"""
    <section class="w-full px-10 pb-20 bg-black text-white flex flex-col items-center gap-6" id="about">
      <h2 class="text-3xl font-bold mb-4 text-center">👨‍💻 About Me</h2>

      <p class="text-white/80 max-w-3xl text-center text-lg">
        I'm a full-stack developer with a strong focus on building reliable backend systems and sleek, responsive frontends.
        Passionate about scalable architectures and turning ideas into functional products.
      </p>

      <div class="flex flex-wrap gap-3 justify-center mt-4">
        <%= for architecture <- architectures do %>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">{architecture}</span>
        <% end %>
      </div>

      <p class="text-white/60 max-w-2xl text-center text-sm mt-6">
        My journey started through self-learning and academic projects. Over time, I’ve built real-world systems like chat apps, distributed storage, and AI-driven tools for national-level hackathons.
      </p>

      <p class="text-white/60 max-w-2xl text-center text-sm">
        I believe in clean code, open-source collaboration, and using technology to solve real-world problems.
      </p>
    </section>
    """
  end
end
