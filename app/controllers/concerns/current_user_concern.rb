module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Convidado User",
                  first_name: "Convidado",
                  last_name: "User",
                  email: "convidado@guest.com"
                  )
  end

end