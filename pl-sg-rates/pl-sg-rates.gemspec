require 'rake'

Gem::Specification.new do |s|
  s.name = 'pl-sg-rates'
  s.version = '0.1.0'
  s.date = '2019-05-13'
  s.authors = ['Siddharth Krish']
  s.licenses = ['MIT']
  s.summary = 'The PL SG Rates calculator'
  s.files = FileList[
    'lib/total_amount_calculator.rb',
    'lib/emi_calculator.rb'
  ]
  s.require_paths = ['lib']
  s.homepage = 'https://github.com/moneysmartco/'

  s.add_development_dependency 'rspec'
  # s.add_runtime_dependency 'rates', path: './vendor/rates'
end
