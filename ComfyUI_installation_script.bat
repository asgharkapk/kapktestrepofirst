@ECHO ON
ECHO Welcome to the installation script!

ECHO Step 1: Navigate to the Downloads folder
CD /D "%USERPROFILE%\Downloads"

ECHO Step 2: Download and install Git
START "" "https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/Git-2.44.0-64-bit.exe"
ECHO Please install Git by following the installation wizard. Then press ENTER...
PAUSE

ECHO Step 3: Download and install Python
START "" "https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe"
ECHO Please install Python and make sure to checkmark "Add python.exe to PATH." Then press ENTER...
PAUSE

ECHO Step 4: Clone the ComfyUI repository
git clone https://github.com/comfyanonymous/ComfyUI.git

ECHO Step 1: Navigate to the ComfyUI folder
cd ComfyUI

ECHO Step 5: Install PyTorch dependencies
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121

ECHO Step 6: Install ComfyUI requirements
pip install -r requirements.txt

ECHO Step 7: Install recommended nodes for ComfyUI
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
git clone https://github.com/crystian/ComfyUI-Crystools.git
cd ComfyUI-Crystools
pip install -r requirements.txt
cd ..
git clone https://github.com/11cafe/comfyui-workspace-manager.git
git clone https://github.com/chrisgoringe/cg-image-picker.git
git clone https://github.com/rgthree/rgthree-comfy.git

cd ..

ECHO Step 8: Run ComfyUI
python main.py

ECHO Step 9: Open the ComfyUI URL
START "" "http://127.0.0.1:8188"

CMD /k
