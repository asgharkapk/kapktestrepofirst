@echo on
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
git clone https://github.com/crystian/ComfyUI-Crystools.git
cd ComfyUI-Crystools
pip install -r requirements.txt
cd ..
git clone https://github.com/11cafe/comfyui-workspace-manager.git
git clone https://github.com/chrisgoringe/cg-image-picker.git
git clone https://github.com/rgthree/rgthree-comfy.git
pause