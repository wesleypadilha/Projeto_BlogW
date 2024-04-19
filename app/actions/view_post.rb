# frozen_string_literal: true

class ViewPost
  include Voltage.call
  include Policies

  attr_reader :user, :post_id

  def initialize(user, post_id)
    @user = user
    @post_id = post_id
  end

  def post
    @post ||= Post.find(post_id)
  end

  def call
    return emit(:unauthorized) unless can_access_post?(user:, post:)

    emit :success, post
  end
end
