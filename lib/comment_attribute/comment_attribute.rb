module CommentAttribute
  extend ActiveSupport::Concern

  def [](comment)
    attr_name = comment_to_attr_name(comment) || comment
    super(attr_name)
  end

  def []=(comment, value)
    attr_name = comment_to_attr_name(comment) || comment
    super(attr_name, value)
  end

  def comment_to_attr_name(comment)
    self.class.columns.find{|r| r.comment == comment }&.name
  end

  def attr_name_to_comment(attr_name)
    self.class.columns.find{|r| r.name == attr_name.to_s }&.comment
  end

  def comments
    Hash[*attributes.map{|k, v| [attr_name_to_comment(k) || k, v]}.flatten]
  end
end

