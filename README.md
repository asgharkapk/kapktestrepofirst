# How to create and generate Tower of Fantasy AI Hentai Arts (local stable diffusion on windows)
01. Install Git: https://git-scm.com/download
02. Install python (pip): https://www.python.org/downloads/
   Make sure to [Add python.exe to PATH]
03. Install Stability Matrix: https://lykos.ai
04. Install Comfui Package in Stability Matrix (https://github.com/comfyanonymous/ComfyUI#installing :: for manual install)
05. Install recommended nodes (extensions) for comfyui (ComfyUI-Manager + comfyui-crystools + comfyui-workspace-manager in Stability Matrix OR manual install in custom_nodes folder: ```git clone https://github.com/ltdrdata/ComfyUI-Manager.git && \ https://github.com/crystian/comfyui-crystools && \ git clone https://github.com/11cafe/comfyui-workspace-manager.git && \ git clone https://github.com/chrisgoringe/cg-image-picker.git && \ git clone https://github.com/rgthree/rgthree-comfy.git```)
06. Install Models and LoRas from civit.ai (you can use built-in model manager in Stability Matrix or use civit.ai website with an account to be able to download NSFW LoRas) (https://civitai.com/search/models?sortBy=models_v6&query=Tower%20of%20Fantasy)
07. Download Comfyui workflows {
   https://comfyworkflows.com/workflows
   https://rundiffusion.com/comfyui-workflows
   https://comfyanonymous.github.io/ComfyUI_examples/
   https://openart.ai/workflows/home?workflowSort=featured
   https://github.com/comfyanonymous/ComfyUI_examples
   https://github.com/wyrde/wyrde-comfyui-workflows
   https://github.com/wyrde/wyrde-comfyui-workflows/tree/main/basics
   https://github.com/wyrde/wyrde-comfyui-workflows/tree/main/basics/was-nodes-start
   https://github.com/atlasunified/Templates-ComfyUI- }
08. Run/Launch Comfyui and open it
09. Load the workflow (Basic Comfyui LoRa workflow: https://civitai.com/models/20443/comfyui-custom-workflows)
    (Make sure to match Base model version and LoRa version together (1.0 / 1.5 / Pony / SDXL)
11. open manager to [Install Missing Custom Nodes]
12. [Queue Prompt]

# How to train your own LoRa:
1. google.com/search?client=opera-gx&q=how+to+train+lora+using+onetrainer
