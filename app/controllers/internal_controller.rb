class InternalController < ApplicationController
  before_filter :set_version, :set_revision

  def version
  end

  def revision
  end

  def changes
    @changes = `git log`
  end

  private
  def set_version
    @version = Achievemintz::VERSION
  end

  def set_revision
    @revision = Achievemintz::REVISION
  end
end
