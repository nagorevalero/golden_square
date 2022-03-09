def make_snippet(str)
  @str = str.split(" ")
  @str.slice(0, 5)
end