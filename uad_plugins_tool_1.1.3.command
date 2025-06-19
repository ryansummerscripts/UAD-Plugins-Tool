#!/bin/bash

# === COLOR DEFINITIONS ===
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# === SAFETY CONFIRMATION ===
echo
echo -e "${GREEN}${BOLD}WARNING: ${GREEN}This script will now run, moving any unused UAD plugins out of their plugin folders, into a new folder on the desktop.${NC}"
echo
read -p "$(echo -e ${BOLD}Are you sure you want to continue?${NC} [y/n]: )" confirm
echo
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo
    echo -e "${RED}Operation cancelled.${NC}"
    exit 1
fi

# Define parent directory for target folders
parent_dir="$HOME/Desktop/UAD_Backup"

# Define individual target directories
vst_dir="$parent_dir/VST"
vst_mono_dir="$parent_dir/VST_Mono"
vst3_dir="$parent_dir/VST3"
component_dir="$parent_dir/Component"
aax_dir="$parent_dir/AAX"
docs_dir="$parent_dir/Documentation"

# Create the target directories if they don't exist
mkdir -p "$vst_dir" "$vst_mono_dir" "$vst3_dir" "$component_dir" "$aax_dir" "$docs_dir"

# List of plugin names (comment out to exclude a plugin)
plugins=(
#    "Console Recall"
#    "UAD 4K Buss Compressor"
#    "UAD 4K Channel Strip"
#    "UAD A-Type Multiband Enhancer"
#    "UAD ADA Flanger"
#    "UAD ADA STD-1 Stereo Tapped Delay"
#    "UAD AKG BX 20"
#    "UAD Ampeg B15N"
#    "UAD Ampeg SVT3Pro"
#    "UAD Ampeg SVTVR Classic"
#    "UAD Ampeg SVTVR"
#    "UAD Ampex ATR-102"
#    "UAD AMS DMX 15-80 S"
#    "UAD AMS Neve DFC Channel Strip"
#    "UAD AMS RMX16 Expanded"
#    "UAD AMS RMX16"
#    "UAD Antares Auto-Tune Realtime"
#    "UAD API 550A"
#    "UAD API 560"
#    "UAD API 2500"
#    "UAD API Preamp"
#    "UAD API Vision Channel Strip Legacy"
#    "UAD API Vision Channel Strip"
#    "UAD Auto-Tune Realtime Access"
#    "UAD Auto-Tune Realtime Advanced"
#    "UAD Auto-Tune Realtime X"
#    "UAD Avalon VT-737sp"
#    "UAD Bermuda Triangle"
#    "UAD Brigade Chorus"
#    "UAD bx_digital V2 Mono"
#    "UAD bx_digital V2"
#    "UAD bx_digital V3 mix"
#    "UAD bx_digital V3"
#    "UAD bx_masterdesk Classic"
#    "UAD bx_masterdesk"
#    "UAD bx_refinement"
#    "UAD bx_saturator V2"
#    "UAD bx_subsynth"
#    "UAD bx_tuner"
#    "UAD C-Suite C-Axe"
#    "UAD C-Suite C-Max"
#    "UAD C-Suite C-Vox"
#    "UAD Cambridge"
#    "UAD Capitol Chambers"
#    "UAD Century Tube Channel Strip"
#    "UAD Chandler GAV19T"
#    "UAD Chandler Limited Curve Bender"
#    "UAD Chandler Limited Zener Limiter"
#    "UAD Cooper Time Cube"
#    "UAD CS-1"
#    "UAD Dangerous BAX EQ Master"
#    "UAD Dangerous BAX EQ Mix"
#    "UAD dbx 160"
#    "UAD Diezel Herbert"
#    "UAD Diezel VH4"
#    "UAD DreamVerb"
#    "UAD Dytronics Cyclosonic Panner"
#    "UAD Dytronics Tri-Stereo Chorus"
#    "UAD Eden WT800"
#    "UAD elysia alpha master"
#    "UAD elysia alpha mix"
#    "UAD elysia mpressor"
#    "UAD Empirical Labs Distressor"
#    "UAD Empirical Labs FATSO Jr"
#    "UAD Empirical Labs FATSO Sr"
#    "UAD EMT 140"
#    "UAD EMT 250"
#    "UAD ENGL E646 VS"
#    "UAD ENGL E765 RT"
#    "UAD ENGL Savage 120"
#    "UAD EP-34 Tape Echo"
#    "UAD Eventide H910 Harmonizer"
#    "UAD Fairchild 660"
#    "UAD Fairchild 670 Legacy"
#    "UAD Fairchild 670"
#    "UAD Fender 55 Tweed Deluxe"
#    "UAD Friedman BE100"
#    "UAD Friedman Buxom Betty"
#    "UAD Friedman DS40"
#    "UAD Fuchs Overdrive Supreme 50"
#    "UAD Fuchs Train II"
#    "UAD Galaxy Tape Echo"
#    "UAD Gallien Krueger 800RB"
#    "UAD Harrison 32C SE"
#    "UAD Harrison 32C"
#    "UAD Helios Type 69 Legacy"
#    "UAD Helios Type 69"
#    "UAD Hemisphere Mic Collection"
#    "UAD Hitsville EQ Mastering"
#    "UAD Hitsville EQ"
#    "UAD Hitsville Reverb Chambers"
#    "UAD Ibanez Tube Screamer TS808"
#    "UAD Korg SDD-3000"
#    "UAD LA-6176 Channel Strip"
#    "UAD Lexicon 224"
#    "UAD Lexicon 480L"
#    "UAD Little Labs IBP"
#    "UAD Little Labs VOG"
#    "UAD Maag EQ4"
#    "UAD Manley Massive Passive MST"
#    "UAD Manley Massive Passive"
#    "UAD Manley Reference Mic Preamp"
#    "UAD Manley Variable Mu"
#    "UAD Manley VOXBOX"
#    "UAD Marshall Bluesbreaker 1962"
#    "UAD Marshall JMP 2203"
#    "UAD Marshall Plexi Classic"
#    "UAD Marshall Plexi Super Lead 1959"
#    "UAD Marshall Silver Jubilee 2555"
#    "UAD MDWEQ5-3B"
#    "UAD MDWEQ5-5B"
#    "UAD MDWEQ5" # for leftover PDF 
#    "UAD Millennia NSEQ-2"
#    "UAD Moog Multimode Filter SE"
#    "UAD Moog Multimode Filter XL"
#    "UAD Moog Multimode Filter"
#    "UAD MXR Flanger-Doubler"
#    "UAD Neve 88RS Legacy"
#    "UAD Neve 88RS"
#    "UAD Neve 1073 Legacy"
#    "UAD Neve 1073"
#    "UAD Neve 1073SE Legacy"
#    "UAD Neve 1081"
#    "UAD Neve 1081SE"
#    "UAD Neve 1084"
#    "UAD Neve 2254 E Dual"
#    "UAD Neve 2254 E"
#    "UAD Neve 31102"
#    "UAD Neve 31102SE"
#    "UAD Neve 33609 C"
#    "UAD Neve 33609SE"
#    "UAD Neve Preamp"
#    "UAD Ocean Way Mic Collection 180"
#    "UAD Ocean Way Mic Collection"
#    "UAD Ocean Way Studios"
#    "UAD OTO Biscuit 8-bit Effects"
#    "UAD Oxford Dynamic EQ"
#    "UAD Oxford Envolution"
#    "UAD Oxford EQ"
#    "UAD Oxford Inflator"
#    "UAD Oxford Limiter"
#    "UAD Oxford SuprEsser DS"
#    "UAD Oxide Tape"
#    "UAD Precision Buss Compressor"
#    "UAD Precision Channel Strip"
#    "UAD Precision De-Esser"
#    "UAD Precision Delay Mod L"
#    "UAD Precision Delay Mod"
#    "UAD Precision Enhancer Hz"
#    "UAD Precision Enhancer kHz"
#    "UAD Precision Equalizer"
#    "UAD Precision K-Stereo"
#    "UAD Precision Limiter"
#    "UAD Precision Maximizer"
#    "UAD Precision Multiband"
#    "UAD Precision Reflection Engine"
#    "UAD Pultec EQP-1A Legacy"
#    "UAD Pultec EQP-1A"
#    "UAD Pultec HLF-3C"
#    "UAD Pultec MEQ-5"
#    "UAD Pultec-Pro Legacy"
#    "UAD Pure Plate"
#    "UAD Putnam Mic Collection 180"
#    "UAD Putnam Mic Collection"
#    "UAD Raw"
#    "UAD RealVerb-Pro"
#    "UAD Roland CE-1"
#    "UAD Roland Dimension D"
#    "UAD Roland RE-201"
#    "UAD Shadow Hills Mastering Compressor"
#    "UAD Softube Amp Room Half-Stack"
#    "UAD Softube Bass Amp Room 8x10"
#    "UAD Softube Bass Amp Room"
#    "UAD Softube Metal Amp Room"
#    "UAD Softube Vintage Amp Room"
#    "UAD Softube Vocoder"
#    "UAD Sound Machine Wood Works"
#    "UAD Sphere Mic Collection 180"
#    "UAD Sphere Mic Collection"
#    "UAD SPL Transient Designer"
#    "UAD SPL TwinTube"
#    "UAD SPL Vitalizer MK2-T"
#    "UAD SSL E Channel Strip Legacy"
#    "UAD SSL E Channel Strip"
#    "UAD SSL G Bus Compressor Legacy"
#    "UAD SSL G Bus Compressor"
#    "UAD Studer A800"
#    "UAD Studio D Chorus"
#    "UAD Suhr PT100"
#    "UAD Suhr SE100"
#    "UAD Summit Audio TLA-100A"
#    "UAD Teletronix LA-2"
#    "UAD Teletronix LA-2A Gray"
#    "UAD Teletronix LA-2A Legacy"
#    "UAD Teletronix LA-2A Silver"
#    "UAD Teletronix LA-3A"
#    "UAD Thermionic Culture Vulture"
#    "UAD Tonelux Tilt Live"
#    "UAD Tonelux Tilt"
#    "UAD Trident A-Range"
#    "UAD TS Overdrive"
#    "UAD Tube-Tech CL 1B mk II"
#    "UAD Tube-Tech CL 1B"
#    "UAD Tube-Tech ME 1B"
#    "UAD Tube-Tech PE 1C"
#    "UAD UA 175-B"
#    "UAD UA 176"
#    "UAD UA 610-A"
#    "UAD UA 610-B"
#    "UAD UA 1176 Rev A"
#    "UAD UA 1176AE"
#    "UAD UA 1176LN Legacy"
#    "UAD UA 1176LN Rev E"
#    "UAD UA 1176SE Legacy"
#    "UAD V76 Preamp"
#    "UAD Valley People Dyna-mite"
#    "UAD Vertigo VSC-2"
#    "UAD Vertigo VSM-3"
)

# Subfolders under VST and VST3 directories
vst_subfolders=(
    "Channel Strip and Preamp"
    "Compressors and Limiters"
    "Delay and Modulation"
    "Equalizers"
    "Guitar and Bass"
    "Mastering"
    "Microphone"
    "Pitch Correction"
    "Reverb and Room"
    "Special Processing"
    "Tape and Saturation"
    "UAD Console"
    "UAD Mono"
    "UAD Unused"
)

# Base directories
component_base="/Library/Audio/Plug-Ins/Components"
vst_base="/Library/Audio/Plug-Ins/VST/Universal Audio"
vst3_base="/Library/Audio/Plug-Ins/VST3/Universal Audio"
aax_base="/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio"
docs_base="/Applications/Universal Audio/Documentation"

# Loop through each plugin name
for plugin in "${plugins[@]}"; do
    # Component path
    component_path="$component_base/${plugin}.component"
    # AAX path
    aax_path="$aax_base/${plugin}.aaxplugin"

    # === Component ===
    if [ -e "$component_path" ]; then
        mv "$component_path" "$component_dir/" && echo -e "${GREEN}AU moved for:          $plugin${NC}"
    else
        echo "AU not found for:      $plugin"
    fi

    # === AAX ===
    if [ -e "$aax_path" ]; then
        mv "$aax_path" "$aax_dir/" && echo -e "${GREEN}AAX moved for:         $plugin${NC}"
    else
        echo "AAX not found for:     $plugin"
    fi

    # VST error flags
    vst_found=false
    vst_mono_found=false
    vst3_found=false
    
    # Loop through specified VST subfolders
    for subfolder in "${vst_subfolders[@]}"; do
        # VST path in this subfolder
        vst_path="$vst_base/$subfolder/${plugin}.vst"
        vst_path_m="$vst_base/$subfolder/${plugin}(m).vst"

        # VST3 path in this subfolder
        vst3_path="$vst3_base/$subfolder/${plugin}.vst3"

        # Move VST  if it exists
        if [ -e "$vst_path" ]; then
            mv "$vst_path" "$vst_dir/" && echo -e "${GREEN}VST moved for:         $plugin${NC}"
            vst_found=true
        fi

        # Move VST (m)  if it exists
        if [ -e "$vst_path_m" ]; then
            mv "$vst_path_m" "$vst_mono_dir/" && echo -e "${GREEN}VST (m) moved for:     $plugin${NC}"
            vst_mono_found=true
        fi

        # Move VST3  if it exists
        if [ -e "$vst3_path" ]; then
            mv "$vst3_path" "$vst3_dir/" && echo -e "${GREEN}VST3 moved for:        $plugin${NC}"
            vst3_found=true
        fi
    done

    # After loop, show a single message per format if nothing was found
    if [ "$vst_found" = false ]; then
        echo "VST not found for:     $plugin"
    fi
    if [ "$vst_mono_found" = false ]; then
        echo "VST (m) not found for: $plugin"
    fi
    if [ "$vst3_found" = false ]; then
        echo "VST3 not found for:    $plugin"
    fi

    # Find matching PDF first
    doc_path=$(find "$docs_base" -type f -iname "*${plugin#UAD }*.pdf" -print -quit)

    if [ -n "$doc_path" ]; then
        mv "$doc_path" "$docs_dir/" && echo -e "${GREEN}PDF moved for:         $plugin${NC}"
    else
        echo "PDF not found for:     $plugin"
    fi

done
    # Move the UAD Plug-Ins Manual.pdf file if it exists
    uad_manual="$docs_base/UAD Plug-Ins Manual.pdf"
    if [ -e "$uad_manual" ]; then
        mv "$uad_manual" "$docs_dir/" && echo -e "${GREEN}PDF moved for:         UAD Plug-Ins Manual${NC}"
    else
        echo "PDF not found for:     UAD Plug-Ins Manual"
    fi

echo
echo -e "${GREEN}Process completed!${NC}"
