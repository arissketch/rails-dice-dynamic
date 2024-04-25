Rails.application.routes.draw do
  get("/",{:controller=>"main", :action=> "home"})
  get("/dice/2/6",{:controller=>"main", :action=> "d2_6page"})
  get("/dice/2/10",{:controller=>"main", :action=> "d2_10page"})
  get("/dice/1/20",{:controller=>"main", :action=> "d1_20page"})
  get("/dice/5/4",{:controller=>"main", :action=> "d5_4page"})
  get("/dice/:random_dice/:random_sides",{:controller=>"main", :action=> "random"})


end
