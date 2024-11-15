class CardComponentPreview < Lookbook::Preview
  def default
    render(CardComponent.new(
      title: "Card title",
      header_action_title: "Bouton",
      footer_main_action_title: "Primary",
      footer_secondary_action_title: "Secondary"
    )) do
      tag.div("This is the card content", class: "card-content")
    end
  end

  def without_action
    render(CardComponent.new(
      title: "Card title",
      footer_main_action_title: "Primary",
      footer_secondary_action_title: "Secondary"
    )) do
      tag.div("This is the card content", class: "card-content")
    end
  end

  def without_header
    render(CardComponent.new(
      footer_main_action_title: "Primary",
      footer_secondary_action_title: "Secondary"
    )) do
      tag.div("This is the card content", class: "card-content")
    end
  end

  def empty_card
    render(CardComponent.new) do
      tag.div("This is the card content", class: "card-content")
    end
  end
end
