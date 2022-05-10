class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article = Article.comments.create(comment_params)
    redirect_to article_pathe(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
