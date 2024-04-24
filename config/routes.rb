Rails.application.routes.draw do
  get("/",{:controller=>"main", :action=> "home"})
  get("/2d6",{:controller=>"main", :action=> "d2_6page"})
  get("/2d10",{:controller=>"main", :action=> "d2_10page"})
  get("/1d20",{:controller=>"main", :action=> "d1_20page"})
  get("/5d4",{:controller=>"main", :action=> "d5_4page"})

end
