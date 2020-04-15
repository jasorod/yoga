# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

podspec = Pod::Spec.new do |spec|
  spec.name = 'YogaKit'
  spec.version = '1.17.0'
  spec.license =  { :type => 'MIT', :file => "LICENSE" }
  spec.homepage = 'https://facebook.github.io/yoga/'
  spec.documentation_url = 'https://facebook.github.io/yoga/docs/'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Facebook'
  spec.source = {
    :git => 'https://github.com/jasorod/yoga.git',
    :tag => 'cbnfamily-tvos-1.18',
  }

  spec.platform = :tvos
  spec.tvos.deployment_target = '10.0'
  spec.tvos.frameworks = 'UIKit'
  spec.dependency 'Yoga', '~> 1.14'
  spec.module_name = 'YogaKit'

  spec.subspec "Core" do |ss|
    ss.source_files = 'YogaKit/Source/*.{h,m}'
    ss.public_header_files = 'YogaKit/Source/{YGLayout,UIView+Yoga}.h'
    ss.private_header_files = 'YogaKit/Source/YGLayout+Private.h'
  end

  spec.subspec 'SwiftExtension' do |ss|
    ss.source_files = 'YogaKit/Source/*.{swift}'
  end

end

# See https://github.com/facebook/yoga/pull/366
podspec.attributes_hash["readme"] = "YogaKit/README.md"
podspec
