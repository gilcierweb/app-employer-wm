class AdminController < ApplicationController
   before_action :authenticate_user!

   include Pagy::Backend

   layout 'admin'
end
