defmodule PhxfolioWeb.UI.MyCard do
  use Phoenix.Component

  def section(assigns) do
    personal_info = %{
      name: "Aditya Pawar",
      summary: """
      Passionate about building reliable backend systems and beautiful frontends. Open to collaborate on open-source and meaningful projects
      """,
      github: "https://github.com/AdityaByte",
      linkedin: "https://www.linkedin.com/in/aditya-byte"
    }

    ~H"""
    <section class="w-full px-3 lg:px-0  pt-5 flex items-center justify-center gap-6" id="hero">
      <div class="bg-gradient-to-b from-white/10 to-white/5 backdrop-blur-md rounded-2xl border border-white/10 p-6 shadow-xl w-full h-full max-w-5xl flex flex-col gap-4 text-white">
        <h1 class="text-3xl font-bold">Hi, I'm {personal_info.name}</h1>

        <p class="text-lg text-white/80">Full-Stack Developer | Software Engineer</p>

        <div class="flex flex-wrap gap-2 mt-2">
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">🚀 Java</span>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">🧠 Spring Boot</span>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">💾 MongoDB</span>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">🌐 HTML/CSS</span>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">⚡ Git</span>
          <span class="bg-white/10 px-3 py-1 rounded-full text-sm">📍 India</span>
        </div>

        <p class="text-sm mt-4 text-white/60">{personal_info.summary}</p>

        <div class="flex gap-4 mt-4">
          <a href={personal_info.github} target="_blank" class="hover:text-gray-300 transition">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 fill-current" viewBox="0 0 24 24">
              <path d="M12 0.3C5.4 0.3 0 5.7 0 12.3c0 5.3 3.4 9.8 8.2 11.4.6.1.8-.3.8-.6v-2.1c-3.3.7-4-1.6-4-1.6-.5-1.3-1.1-1.6-1.1-1.6-.9-.6.1-.6.1-.6 1 .1 1.5 1 1.5 1 .9 1.5 2.3 1.1 2.9.9.1-.7.3-1.1.6-1.4-2.6-.3-5.3-1.3-5.3-5.8 0-1.3.5-2.4 1.2-3.2 0-.3-.5-1.3.1-2.7 0 0 1-.3 3.3 1.2a11.3 11.3 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.4.1 2.4.1 2.7.8.8 1.2 1.9 1.2 3.2 0 4.5-2.7 5.5-5.3 5.8.4.3.7.9.7 1.8v2.6c0 .3.2.7.8.6A12.1 12.1 0 0 0 24 12.3C24 5.7 18.6.3 12 .3z" />
            </svg>
          </a>

          <a href={personal_info.linkedin} target="_blank" class="hover:text-gray-300 transition">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 fill-current" viewBox="0 0 24 24">
              <path d="M4.98 3.5C3.33 3.5 2 4.83 2 6.48s1.33 2.98 2.98 2.98S7.96 8.13 7.96 6.48 6.63 3.5 4.98 3.5zM2.4 21.5h5.2v-13H2.4v13zM9.4 8.5v13h5.2v-7.1c0-2.1 1.7-3.2 2.8-3.2 1.1 0 1.7.7 1.7 2v8.3h5.2v-8.9c0-4.4-2.3-6.4-5.4-6.4-2.5 0-3.6 1.4-4.2 2.4V8.5h-5.3z" />
            </svg>
          </a>
        </div>
      </div>
    </section>
    """
  end
end
