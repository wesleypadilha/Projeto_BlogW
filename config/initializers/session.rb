# frozen_string_literal: true

Rails.env.on(:development, :production) do
  Rails.application.config.session_store :cookie_store,
                                         secure: true,
                                         key: "_photomatic_session",
                                         expire_after: 6.months
end
