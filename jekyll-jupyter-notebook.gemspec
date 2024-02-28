
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-jupyter-notebook/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-jupyter-notebook"
  spec.version       = JekyllJupyterNotebook::VERSION
  spec.authors       = ["Zhigang Song"]
  spec.email         = ["song@iuwei.fun"]
  spec.summary       = "支持在 Jekyll 里面插入 Jupyter Notebook 的插件"
  spec.homepage      = "https://github.com/sidgwick/jekyll-jupyter-notebook"
end
