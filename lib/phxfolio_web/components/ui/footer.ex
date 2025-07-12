defmodule PhxfolioWeb.UI.Footer do
  use Phoenix.Component

  def footer(assigns) do
    ~H"""
    <footer class="bg-black border-t border-white/10 py-6 px-10 text-white text-sm">
      <div class="max-w-7xl mx-auto flex flex-col md:flex-row justify-center items-center gap-4">
        <p>© 2025 Aditya Pawar. All rights reserved.</p>
      </div>
    </footer>
    """
  end
end
