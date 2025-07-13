defmodule PhxfolioWeb.UI.Navbar do
  use Phoenix.Component

  def navbar(assigns) do
    ~H"""
    <nav
      class=" px-6 py-4 mx-3 lg:mx-0 bg-white/5 backdrop-blur-lg shadow-md text-white border-b border-white/10 sticky top-0 z-50 rounded-lg mt-7 mb-10"
      id="navbar"
    >
      <div class="max-w-7xl mx-auto flex justify-between items-center">
        <h1 class="text-2xl font-extrabold tracking-wide">
          Phx<span class="text-blue-400">folio</span>.
        </h1>

        <div class="hidden md:flex gap-6 text-sm font-medium text-white/80">
          <a href="#hero" class="hover:text-white transition">Home</a>
          <a href="#skills" class="hover:text-white transition">Skills</a>
          <a href="#projects" class="hover:text-white transition">Projects</a>
          <a href="#about" class="hover:text-white transition">About</a>
          <a href="#contact" class="hover:text-white transition">Contact</a>
        </div>

        <a
          href="https://github.com/AdityaByte"
          target="_blank"
          class="md:block hidden text-white/80 hover:text-white transition"
          title="GitHub"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-5 w-5"
            fill="currentColor"
            viewBox="0 0 24 24"
          >
            <path d="M12 0C5.371 0 0 5.371 0 12c0 5.302 3.438 9.8 8.207 11.387.6.111.793-.261.793-.577
            0-.285-.011-1.04-.017-2.04-3.338.726-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.09-.745.083-.729.083-.729
            1.205.085 1.838 1.238 1.838 1.238 1.07 1.834 2.807 1.304 3.492.997.108-.775.419-1.305.762-1.605-2.665-.305-5.467-1.333-5.467-5.932
            0-1.311.469-2.382 1.236-3.221-.124-.303-.536-1.524.117-3.176 0 0 1.008-.322 3.3 1.23a11.512
            11.512 0 013.003-.404 11.51 11.51 0 013.003.404c2.291-1.552 3.297-1.23 3.297-1.23.655 1.653.243
            2.874.119 3.176.77.839 1.235 1.91 1.235 3.221 0 4.61-2.807 5.624-5.48
            5.921.43.371.823 1.102.823 2.222 0 1.604-.015 2.896-.015 3.291 0 .319.192.694.8.576C20.565
            21.796 24 17.298 24 12c0-6.629-5.371-12-12-12z" />
          </svg>
        </a>
      </div>
    </nav>
    """
  end
end
