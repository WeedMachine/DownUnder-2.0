GFX_ArmaViewDistance         = 1500;
GFX_ArmaTerrainGrids         = [55, 25, 12.5, 12.5, 12.5];
GFX_ArmaTerrainGridsSel      = 1;
setViewDistance GFX_ArmaViewDistance;
setTerrainGrid (GFX_ArmaTerrainGrids select GFX_ArmaTerrainGridsSel);
