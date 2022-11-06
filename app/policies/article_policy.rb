class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    # user || !record.private
    return true unless record.private
    return true if user
    return false
      
    
  end
end
