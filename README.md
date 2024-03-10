# How to create and generate Tower of Fantasy AI Hentai Arts (local stable diffusion on windows)
01. Install Git: https://git-scm.com/download
02. Install python : https://www.python.org/downloads \
   Make sure to [Add python.exe to PATH]
03. Install Stability Matrix: https://lykos.ai
04. Install Comfui Package in Stability Matrix (for manual install: https://github.com/comfyanonymous/ComfyUI#installing)
05. Install recommended nodes (extensions) for comfyui (ComfyUI-Manager + comfyui-crystools + comfyui-workspace-manager in Stability Matrix OR manual install in ```custom_nodes``` folder: https://github.com/asgharkapk/kapktestrepofirst/blob/main/recommended_nodes.bat)
06. Install Models and LoRas from civit.ai (you can use built-in model manager in Stability Matrix or use civit.ai website with an account to be able to download NSFW LoRas) (https://civitai.com/search/models?sortBy=models_v6&query=Tower%20of%20Fantasy)
07. Download Comfyui workflows { \
   https://comfyworkflows.com/workflows \
   https://rundiffusion.com/comfyui-workflows \
   https://comfyanonymous.github.io/ComfyUI_examples \
   https://openart.ai/workflows/home?workflowSort=featured \
   https://github.com/comfyanonymous/ComfyUI_examples \
   https://github.com/wyrde/wyrde-comfyui-workflows \
   https://github.com/wyrde/wyrde-comfyui-workflows/tree/main/basics \
   https://github.com/wyrde/wyrde-comfyui-workflows/tree/main/basics/was-nodes-start \
   https://github.com/atlasunified/Templates-ComfyUI- }
08. Run/Launch Comfyui and open it in browser
09. Load the workflow (Basic Comfyui LoRa workflow: https://civitai.com/models/20443/comfyui-custom-workflows)
    (Make sure to match Base model version and LoRa version together (1.0 / 1.5 / Pony / SDXL)
11. open manager to [Install Missing Custom Nodes]
12. [Queue Prompt]
#
# How to train your own LoRa:
1. https://google.com/search?q=how+to+train+lora+using+onetrainer
#
# ComfyUI_installation_script.bat
@ECHO ON \
ECHO Welcome to the installation script! \

ECHO Step 1: Navigate to the Downloads folder \
CD /D "%USERPROFILE%\Downloads" \

ECHO Step 2: Download and install Git \
START "" "https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/Git-2.44.0-64-bit.exe" \
ECHO Please install Git by following the installation wizard. Then press ENTER... \
PAUSE \

ECHO Step 3: Download and install Python \
START "" "https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe" \
ECHO Please install Python and make sure to checkmark "Add python.exe to PATH." Then press ENTER... \
PAUSE \

ECHO Step 4: Clone the ComfyUI repository \
git clone https://github.com/comfyanonymous/ComfyUI.git \

ECHO Step 1: Navigate to the ComfyUI folder \
cd ComfyUI \

ECHO Step 5: Install PyTorch dependencies \
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121 \

ECHO Step 6: Install ComfyUI requirements \
pip install -r requirements.txt \

ECHO Step 7: Install recommended nodes for ComfyUI \
cd custom_nodes \
git clone https://github.com/ltdrdata/ComfyUI-Manager.git \
git clone https://github.com/crystian/ComfyUI-Crystools.git \
cd ComfyUI-Crystools \
pip install -r requirements.txt \
cd ..
git clone https://github.com/11cafe/comfyui-workspace-manager.git \
git clone https://github.com/chrisgoringe/cg-image-picker.git \
git clone https://github.com/rgthree/rgthree-comfy.git \

cd .. \

ECHO Step 8: Run ComfyUI \
python main.py \

ECHO Step 9: Open the ComfyUI URL \
START "" "http://127.0.0.1:8188" \

CMD /k
#
