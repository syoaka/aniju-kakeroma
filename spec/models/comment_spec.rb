require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '新規コメント登録' do
    before do
      user = FactoryBot.create(:user)
      post = FactoryBot.create(:post)
      @comment = FactoryBot.build(:comment, user_id: user.id, post_id: post.id)
      sleep 0.1
    end

    context '新規登録できるとき' do
      it '項目が全て存在すれば登録できる' do
        expect(@comment).to be_valid  
      end
    end

    context '新規登録できないとき' do
      it 'textが空では登録できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      it 'userが紐付いていなければ投稿できない' do
        @comment.user_id = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User can't be blank")
      end
      it 'postが紐付いていなければ投稿できない' do
        @comment.post_id = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Post can't be blank")
      end
    end
  end
end
