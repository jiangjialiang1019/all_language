# ================================
# 特殊文件解析证明材料
# 生成时间: 2025
# ================================
[Render Rules]
Version=1.0
Description=Custom Topographic Rendering

[Zoom Level 0-10]
Highway.Visible=0
City.Visible=0
River.Visible=1
Lake.Visible=1

[Zoom Level 11-15]
Highway.Visible=1
City.Visible=1
River.Visible=1
Lake.Visible=1
Trail.Visible=0

[Zoom Level 16+]
Highway.Visible=1
City.Visible=1
River.Visible=1
Lake.Visible=1
Trail.Visible=1
Building.Visible=1

[Style Rules]
Highway.Motorway=color:FF0000FF,width:8
Highway.Trunk=color:FFFF0000,width:6
Highway.Primary=color:FFFFFF00,width:5
Highway.Secondary=color:FF00FF00,width:4

[Label Rules]
City.MinPopulation=50000
POI.MinImportance=3
Street.MinZoom=15