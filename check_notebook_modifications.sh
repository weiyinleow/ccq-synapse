MODIFIED_FILES=$(git diff HEAD HEAD~ --name-only)

files=( "notebook/AEMO_Bronze.json" "notebook/AEMO_Dimtables.json" "notebook/AEMO_DZ_Delete.json"
 "notebook/AEMO_DZ_To_Landing.json" "notebook/AEMO_Gold.json" "notebook/AEMO_Landing.json" "notebook/AEMO_Silver.json"
 "notebook/Create_Directory.json" "notebook/Dedicated_SQL.json" "notebook/DimTables_Gold.json" "notebook/Drop_folderfile.json"
 "notebook/FillNull_Values.json" "notebook/Get_MetaDB_Params.json" "notebook/LACIMA_Bronze_Performance.json" "notebook/LACIMA_Bronze.json" 
 "notebook/LACIMA_Gold_LoadDedicated.json" "notebook/LACIMA_Gold.json" "notebook/LACIMA_Silver.json" "notebook/MSATS_Bronze.json" 
 "notebook/MSATS_Silver.json" "notebook/Performance.json" "notebook/SharePoint_Bronze.json"  "notebook/SharePoint_Gold.json" 
 "notebook/SharePoint_Silver.json" "notebook/SOLAR_Bronze.json" "notebook/SOLAR_Gold.json" "notebook/SOLAR_Silver.json"
  )

for mf in "${MODIFIED_FILES[@]}"
  do
    for f in "${files[@]}"
      do
        if [ $mf == $f ] 
        then
          echo "unauthorised notebook modified: $mf"
          echo "exiting..."
          exit 1
        fi
      done
  done
exit 0