module JekyllJupyterNotebook
  class Tag < Liquid::Tag
    Liquid::Template.register_tag("jupyter_notebook", self)

    def render(context)
        page = context.registers[:page]
        dir_name = File.dirname(page[:relative_path])
        notebook_path = "#{Dir.pwd}/#{dir_name}/#{@markup}"


        cmd = ["jupyter", "nbconvert", notebook_path.strip,
               "--template", "nbmd",
               "--to", "markdown", "--stdout"]

        IO.popen(cmd) {|xio|
          xio.read
        }
    end
  end
end
