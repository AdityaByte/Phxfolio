defmodule PhxfolioWeb.UI.ContactSection do
  use Phoenix.Component

  def contactMe(assigns) do
    ~H"""
      <section id="contact" class="mb-10 mx-3 lg:mx-0 p-6 bg-white/5 rounded-xl">
        <h2 class="text-2xl font-semibold mb-4 text-white">Let's Connect</h2>
        <p class="text-white/80 mb-2">Interested in working together, asking a question, or just saying hi?</p>
        <a href="mailto:adityapawar@email.com" class="text-blue-400 hover:underline">📧 cybergeek563@email.com</a>
      </section>
    """
  end
end
