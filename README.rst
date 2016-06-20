

# Test terminal coloring
for i in {0..255} ; do
  printf "\x1b[38;5;${i}mcolour${i}\n"
done

Or use the colortest script like so:

  perl colortest -w
