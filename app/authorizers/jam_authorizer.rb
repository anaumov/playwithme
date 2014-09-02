class JamAuthorizer < ApplicationAuthorizer

  def updatable_by?(user)
    resource.owner == user
  end

  def deletable_by?(user)
    resource.owner == user
  end

  def invitable_by?(user)
    resource.owner == user
  end

end