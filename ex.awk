#!/usr/bin/awk -f

/^\+/ { counter++ }
/^\|/ { likes[counter] = likes[counter] $2
    dislikes[counter] = dislikes[counter] $3
} 

BEGIN{
  counter = 0
  FS = "|"
} 

END {
  for ( out_counter = 1 ; out_counter <= counter ; out_counter++ ){
    gsub(/[[:space:]]+/," ",likes[out_counter])
    gsub(/[[:space:]]+/," ",dislikes[out_counter])
    printf("\nlike[%i]: %s\ndislike[%i]: %s\n",
      out_counter, likes[out_counter], 
      out_counter, dislikes[out_counter])
  }
}
