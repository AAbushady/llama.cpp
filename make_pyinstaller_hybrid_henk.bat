cd /d "%~dp0"
copy "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.3\bin\cudart64_110.dll" .\ /Y
copy "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.3\bin\cublasLt64_11.dll" .\ /Y
copy "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.3\bin\cublas64_11.dll" .\ /Y
"C:\Program Files\Python310\python.exe" -m PyInstaller --noconfirm --onefile --collect-all customtkinter --clean --console --icon ".\niko.ico" --add-data "./winclinfo.exe;." --add-data "./OpenCL.dll;." --add-data "./klite.embd;." --add-data "./kcpp_docs.embd;." --add-data "./koboldcpp_default.dll;." --add-data "./koboldcpp_openblas.dll;." --add-data "./koboldcpp_failsafe.dll;." --add-data "./koboldcpp_noavx2.dll;." --add-data "./libopenblas.dll;." --add-data "./koboldcpp_clblast.dll;." --add-data "./koboldcpp_clblast_noavx2.dll;." --add-data "./clblast.dll;." --add-data "./koboldcpp_cublas.dll;." --add-data "./cudart64_12.dll;." --add-data "./cublasLt64_12.dll;." --add-data "./cublas64_12.dll;." --add-data "./rwkv_vocab.embd;." --add-data "C:/Windows/System32/msvcp140.dll;." --add-data "C:/Windows/System32/vcruntime140_1.dll;." "./koboldcpp.py" -n "koboldcpp.exe"