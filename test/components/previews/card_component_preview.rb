class CardComponentPreview < Lookbook::Preview
  def default_with_all
    render CardComponent.new(type: :default, colored_header: true) do |card|
      card.with_header(
        title: "Example Card Title",
        left_icon: "icon_bug",
        action_title: "Edit",
        action_button_type: :primary
      )
      card.with_footer(main_action: "Submit", secondary_action: "Cancel")
      "Body text"
    end
  end

  def default2
    render CardComponent.new(type: :success, colored_header: true) do |card|
      card.with_header(title: "Card title", left_icon: "icon_edit", action_title: "Edit", type: :success)
      card.with_footer(main_action: "Submit", secondary_action: "Cancel")
      tag.div("This is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card content", class: "card-content")
    end
  end

  def only_body
    render CardComponent.new do
      "This is a card with only the body content."
    end
  end

  def only_body_with_badge
    render CardComponent.new do |card|
      card.with_badge(icon: "icon_bug", square: true, type: :danger, border: true)
      "This is a card with only the body content."
    end
  end
=begin
  def default
    render(CardComponent.new(
      title: "Card title",
      header_action_title: "Bouton",
      footer_main_action_title: "Primary",
      footer_secondary_action_title: "Secondary"
    )) do
      tag.div("This is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card contentThis is the card content", class: "card-content")
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
=end
end
