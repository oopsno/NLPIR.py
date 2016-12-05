/#define\s*\S*\s*[^\/]*\/\// {
  VAL = $3$4;
  sub(/\/\//, " # ", VAL);
  printf("%s = %s\n", $2, VAL);
}
