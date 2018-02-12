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
end

