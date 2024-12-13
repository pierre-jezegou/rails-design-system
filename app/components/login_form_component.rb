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
              <%= form.email_field :username, placeholder: "Nom d'utilisateur",class: 'form-control', required: true %>
            </div>
        
            <div class="form-group">
              <%= form.password_field :password, placeholder: 'Mot de passe', class: 'form-control', required: true %>
            </div>
        
            <div class="form-group">
              <%= render ButtonComponent.new(text: "Se connecter",  path: "login_form/default") %>
            </div>
            
            <%= tag.p(path: "#", class: 'forgot-password') do %>
              J'ai oublié mon mot de passe
            <% end %>
          <% end %>
          
        </div>
      <% end %>
      <%= tag.div(class: 'signup-form-section') do %>
        <%= render ButtonComponent.new(text: "S'inscrire",  path: "login_form/default") %>
      <% end %>
    <% end %>
  ERB

  def initialize(action:, method: 'post')
    @action = action
    @method = method
  end
end
