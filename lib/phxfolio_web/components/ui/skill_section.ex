defmodule PhxfolioWeb.UI.SkillSection do
  use Phoenix.Component

  def section(assigns) do
    skills = [
      {"Languages", ["Java", "Golang", "Python", "JavaScript", "Elixir"]},
      {"Frameworks", ["Spring", "Phoenix", "Hibernate", "Thymeleaf"]},
      {"Web", ["HTML", "CSS", "React", "Redux", "REST APIs"]},
      {"Databases", ["MySQL", "MongoDB"]},
      {"Tools", ["Git", "Postman", "Figma", "Kafka", "Redis"]},
      {"Testing", ["JUnit", "Mockito", "Selenium", "PyTest"]}
    ]

    assigns = assign(assigns, skills: skills)

    ~H"""
    <section class="w-full px-3 lg:px-0 py-20 pb-0 my-5" id="skills">
      <h2 class="text-white text-3xl font-bold mb-6 text-center">🧠 My Skills</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <%= for {category, items} <- @skills do %>
          <div class="bg-white/10 text-white rounded-xl p-4 backdrop-blur-md border border-white/10 shadow-md">
            <h3 class="text-lg font-semibold mb-2">{category}</h3>
            <ul class="text-sm list-disc list-inside text-white/80">
              <%= for item <- items do %>
                <li>{item}</li>
              <% end %>
            </ul>
          </div>
        <% end %>
      </div>
    </section>
    """
  end
end
