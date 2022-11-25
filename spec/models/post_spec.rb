require 'rails_helper'

RSpec.describe Post, type: :model do

  before do
    @post = FactoryBot.build(:post)
  end

  describe '商品投稿登録' do
    context '新規登録できるとき' do
      it '項目が全て存在すれば登録できる' do
        expect(@post).to be_valid  
      end
    end
    context '新規登録できないとき' do
      it 'titleが空では登録できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空では登録できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Text can't be blank")
      end
      it 'area_idが1では登録できない' do
        @post.area_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include("Area を選択してください")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
