@echo off
echo ===================================================
echo COMPRESSING GLB MODEL (DRACO + WEBP TEXTURES)
echo ===================================================
echo This script will optimize "astronut.glb" in-place to
echo make it up to 10x smaller using Draco mesh compression
echo and WebP texture compression.
echo.
echo Please wait... Running gltf-transform optimizer...
echo.
npx -y @gltf-transform/cli optimize astronut.glb astronut.glb --compress draco --texture-compress webp --texture-size 1024 --simplify false
echo.
echo ===================================================
echo SUCCESS! "astronut.glb" has been optimized.
echo ===================================================
pause
