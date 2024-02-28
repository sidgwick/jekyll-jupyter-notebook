# Jekyll Jupyter Notebook

支持在 Jekyll 文档中嵌入 ipynb 的插件.

实现受到 [https://github.com/red-data-tools/jekyll-jupyter-notebook](https://github.com/red-data-tools/jekyll-jupyter-notebook) 的启发, 但是我不需要嵌入 html 格式, 所以直接重写了.

## Installation

在 Gemfile 里面追加依赖:

```ruby
gem "jekyll-jupyter-notebook", :git => "https://github.com/sidgwick/jekyll-jupyter-notebook"
```

之后执行 `bundle install` 安装依赖.

接下来在 `_config.yaml` 的 `plugin` 部分追加 `jekyll-jupyter-notebook`, 启用本插件.

## Usage

在需要插入 Notebook 的地方, 按下面的方法写:

```markdown
{% jupyter_notebook decision_stump.ipynb %}
```

这段代码会执行

```bash
jupyter nbconvert --template nbmd --to markdown --stdout decision_stump.ipynb
```

把 `decision_stump.ipynb` 转化为 markdown, 使用的模板是 nbmd, 要求它位于 jekyll 项目根目录下面, 因此需要创建一个这样的模板目录, 模板编写请参考[https://nbconvert.readthedocs.io/en/latest/customizing.html](https://nbconvert.readthedocs.io/en/latest/customizing.html), 如果不需要定制模板, 则按照链接里面说明, 简单继承官方的 markdown 模板就好.

我自己使用的模板, 可以参考 [https://github.com/sidgwick/sidgwick.github.io/tree/master/nbmd](https://github.com/sidgwick/sidgwick.github.io/tree/master/nbmd).

## TODO

- [ ] 支持直接通过网络形式拉取 ipynb 资源
