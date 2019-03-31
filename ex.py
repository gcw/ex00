#!/usr/bin/env python2.7
import sys 

like={}
dislike={}
for line in sys.stdin:
    if line.startswith('|'):
        like[count], dislike[count] = [ x.rstrip() for x in line.split('|')[1:3] ] 
    else:
        print( "like: %s" % " ".join([ x.lstrip() for x in like.values()]) )
        print( "dislike: %s\n" % " ".join([ x.lstrip() for x in dislike.values()]) )
        like = {}
        dislike = {}
