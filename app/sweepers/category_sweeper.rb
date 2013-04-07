class CategorySweeper < ActionController::Caching::Sweeper
  observe Category
  def after_update(category)
    expire_fragment('categories_menu')
  end

  def after_create(category)
    expire_fragment('categories_menu')
  end

  def after_delete(category)
    expire_fragment('categories_menu')
  end
end