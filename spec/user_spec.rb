require_relative '../lib/user'
require 'spec_helper'


RSpec.describe User do
  shared_context '13の時' do
    let(:age){ 13 }   
  end
  shared_context '12の時' do
    let(:age){ 12 }
  end
  context '' do
    include_context '13の時'
    subject {User.new('aki',age).greet}
    it {is_expected.to eq '僕はakiです' }      
  end

  context '' do
    include_context '12の時'
    subject {User.new('aki',age).greet}
    it {is_expected.to eq 'ぼくはakiだよ'}
  end
end