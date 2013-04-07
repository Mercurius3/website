ActiveAdmin.register Category do
  controller do
    cache_sweeper :category_sweeper
  end
end