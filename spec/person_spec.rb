require_relative '../lib/person'
require 'spec_helper'

RSpec.describe Person do

  describe '#auth_smoke?' do
    subject {Person.new(age).auth_smoke?}   
    context 'can smoke' do
      let(:age) {20}
      it '#auth_smoke? 20>=' do
        is_expected.to be true
      end
    end
    context 'cant smoke' do
      let(:age){ 19 }
      it '' do
        is_expected.to be false
      end
    end
  end

  it '#auth_drink can drink?' do
    expect(Person.new(20).auth_drink?).to be true
  end

  it '#auth_drink cant drink?' do
    expect(Person.new(19).auth_drink?).to be false
  end

  it '#auth_vote? can vote' do
    expect(Person.new(20).auth_vote?).to be true
  end

  it '#auth_vote? cant vote' do
    expect(Person.new(19).auth_vote?).to be false
  end
end