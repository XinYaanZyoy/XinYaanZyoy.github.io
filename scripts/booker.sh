cd Recipes ;
for i in ebooks/md/* ; do
   echo "# ${i%/}" ;
   echo " " ;
   for j in $i/*.md ; do
      echo "## $(basename ${j%.md})" ;
      echo ;
      cat $i/$j ;
      echo ; 
   done ;
done ; | pandoc --toc --number-sections --top-level-division=part --output=my-recipe-book.pdf -
