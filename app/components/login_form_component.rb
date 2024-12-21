# frozen_string_literal: true

class LoginFormComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <%= tag.div(class: 'login-container') do %>
      <%= tag.div(class: 'login-form-section') do %>
        <div class="login-form">
          <%= svg_icon_tag("locker", class: "login-form--icon") %>

          <%= tag.h2(class: 'login-form-title') do %>
            Agrega - Se connecter
          <% end %>
          <%= form_with url: @action, method: @method, local: true do |form| %>
            <div class="form-group">
              <%= form.text_field :username, placeholder: "Nom d'utilisateur",class: 'form-control', required: true %>
            </div>

            <div class="form-group">
              <%= form.password_field :password, placeholder: 'Mot de passe', class: 'form-control', required: true %>
            </div>

            <div class="form-group">
              <%= render ButtonComponent.new(form_path: "/auth/login", text: "Submit Form", type: :primary, method: :post) %>
            </div>

            <%= tag.p(path: "#", class: 'forgot-password') do %>
              J'ai oublié mon mot de passe
            <% end %>
          <% end %>

        </div>
      <% end %>
      <%= tag.div(class: 'signup-form-section') do %>
        <%= tag.div(class: 'signup-text') do %>
          <%= tag.h3(class: 'login-form-title') do %> Pas encore de compte ? <% end %>
          <%= tag.p("Demander un compte maintenant !") %>
          <%= render ButtonComponent.new(text: "S'inscrire", type: :secondary, path: "login_form/default", disabled: true) %>
        <% end %>
        <%= tag.div(class:"form-graphic-background") do %>
          <%= image_tag asset_path "graphic_background.svg", class:"img_preview" %>
        <% end %>
      <% end %>
    <% end %>
  ERB

  def initialize(action:, method: "post")
    @action = action
    @method = method
  end
end
