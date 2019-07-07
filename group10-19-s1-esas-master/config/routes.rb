Rails.application.routes.draw do
  root to: 'voters#landing'
  resources :parties
  resources :candidates
  resources :voters do
    get "landing", to: "voters#landing"
    get "vote", to: "voters#vote"
    get "results", to: "voters#results"
    get "party_submit", to: "voters#party_submit"
    get "candidate_submit", to: "voters#candidate_submit"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
