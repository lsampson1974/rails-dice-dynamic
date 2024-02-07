Rails.application.routes.draw do

    get("/", { :controller => "rolls", :action => "show_homepage"})
    get("/dice/:number_of_dice/:number_of_faces", { :controller => "rolls", :action => "roll_dice"})

end
