mycocosm=$(pwd)/mycocosm_annotations

if [ ! -d "$mycocosm" ]; then
  echo "Creating mycocosm_annotations directory."
  mkdir mycocosm_annotations
fi

if [ $2 = "GO" ]; then
	mv $1/*/Annotation/Mycocosm/Annotation/Filtered_Models___best__/Functional_Annotations/GO/* ${mycocosm}
elif [ $2 = "KEGG" ]; then
	mv $1/*/Annotation/Mycocosm/Annotation/Filtered_Models___best__/Functional_Annotations/EC_annotations_and_KEGG_pathway_mappings/* ${mycocosm}
elif [ $2 = "InterPro" ]; then
	mv $1/*/Annotation/Mycocosm/Annotation/Filtered_Models___best__/Functional_Annotations/InterPro/* ${mycocosm}
elif [ $2 = "KOG" ]; then
	mv $1/*/Annotation/Mycocosm/Annotation/Filtered_Models___best__/Functional_Annotations/KOG/* ${mycocosm}
elif [ $2 = "Signalp" ]; then
	mv $1/*/Annotation/Mycocosm/Annotation/Filtered_Models___best__/Functional_Annotations/Signalp/* ${mycocosm}
else 
	echo "Annotation type not recognized: options are GO, KEGG, InterPro, KOG, and Signalp."
fi

rm -rf $1