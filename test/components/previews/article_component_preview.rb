class ArticleComponentPreview < Lookbook::Preview
  def default
    render ArticleComponent.new(title: "Vague de chaleur et canicule la semaine prochaine") do |article|
      "Après un début d’été parfois mitigé sur la France, l’air brulant en embuscade sur le bassin méditerranéen s’étendra brusquement sur le territoire la semaine prochaine. Avec jusqu’à 40°C envisagés sur nos thermomètres, cette vague de chaleur nationale pourrait devenir caniculaire dans le sud de la France."
    end
  end
end
