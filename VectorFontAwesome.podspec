
git_tag = `git describe --tags --abbrev=0`.strip()

Pod::Spec.new do |s|
  s.name             = 'VectorFontAwesome'
  s.version          = git_tag.gsub('v', '')
  s.summary          = 'FontAwesome free icons precompiled as PDF vector images'
  s.homepage         = 'https://github.com/Kjens93/VectorFontAwesome'
  s.author           = { 'Kyler Jensen' => 'kjens93@users.noreply.github.com' }
  s.license          = { :type => 'MIT', :text => <<-LICENSE
    Copyright (c) 2019 Kyler Jensen

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
    LICENSE
  }

  s.source           = { :http => "https://github.com/Kjens93/VectorFontAwesome/releases/download/#{git_tag}/VectorFontAwesome.framework.zip" }
  
  s.ios.frameworks = 'UIKit'
  s.ios.deployment_target = '11.0'
  s.ios.vendored_frameworks = "Carthage/Build/iOS/VectorFontAwesome.framework"

end
