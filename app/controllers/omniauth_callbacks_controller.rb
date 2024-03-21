class OmniauthCallbacksController < ApplicationController
    def twitter
        
        twitter_account = Current.user.twitter_accounts.where(username: auth.nickname).first_or_initialize
        Rails.logger.info twitter_account
        Rails.logger.info  auth.info.name
        twitter_account.update(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secret,
        )
        redirect_to twitter_accounts_path, notice: "Successfuly connected your account"
    end

    def auth
        request.env['omniauth.auth']
    end
end