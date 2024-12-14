# frozen_string_literal: true

class LayoutComponent < ViewComponent::Base
  def initialize
    @articles = articles
  end

  def articles
    [
      {
        title: "Vague de chaleur et canicule la semaine prochaine",
        image_url: "https://media.ouest-france.fr/v1/pictures/MjAyNDA1ZmQ4MjVlMjQ5NTkzMzRkMjVjN2NmNTE2NzQ3ZGI3ZTE?width=375&focuspoint=50%2C25&cropresize=1&client_id=bpeditorial&sign=6366dc112457c7774031937f96e0e4b8264881d530e007d3578f0c447f1fc6ef",
        published: "1j",
        source: "FranceInfo",
        source_logo_url: "https://www.abilitis.fr/wp-content/uploads/2024/11/franceinfo-en-journee-speciale-A-quoi-ressemblera-votre-ete-_-vendredi-1er-juillet.jpg",
        tags: [ { text: "Tag 1", path: "/tags/1" }, { text: "Politics", path: "/tags/2" } ],
        content: "Après un début d’été parfois mitigé sur la France, l’air brulant en embuscade sur le bassin méditerranéen s’étendra brusquement sur le territoire la semaine prochaine. Avec jusqu’à 40°C envisagés sur nos thermomètres, cette vague de chaleur nationale pourrait devenir caniculaire dans le sud de la France."
      },
      {
        title: "Changements climatiques: le futur de la planète en jeu",
        published: "2j",
        source: "Le Monde",
        tags: [ { text: "Climate", path: "/tags/3" }, { text: "Environment", path: "/tags/4" } ],
        content: "Les experts alertent sur les conséquences graves du réchauffement climatique, mettant en lumière les défis pour les décennies à venir."
      }
    ]
  end
end
