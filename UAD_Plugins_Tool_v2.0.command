#!/bin/bash

# UAD Plugins Tool v2.0
# by Ryan Summer
# https://shop.ryansummer.com/p/uad-plugins-tool/

# List of plugin names (delete a hashtag to REMOVE a plugin)
# Note that 'UAD MDWEQ5' is not a valid plugin name.
# it's only listed here to remove this outlier/combined PDF if desired.
# this gets subtracted from the Show Preferences summary calculations ✅

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
#    "UAD Maag EQ4 MS"
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
#    "UAD MDWEQ5"
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
#    "UAD Shadow Hills Class A Mastering Comp"
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

# === COLOR DEFINITIONS ===
BO=$'\033[1m'
GR=$'\033[1;32m'
RE=$'\033[1;31m'
BL=$'\033[1;34m'
YE=$'\033[1;33m'
CY=$'\033[1;36m'
NC=$'\033[0m'

# navigation codes
NAV_BACK=0
NAV_CONT=1
NAV_QUIT=2

return_to_menu=false
interrupted=false

# Global Navigation handler
handle_navigation_input() {
    local choice="$1"
    case "$choice" in
        "q"|"Q"|"quit"|"QUIT"|"exit"|"EXIT")
            return_to_menu=false
            interrupted=false
            return $NAV_QUIT
            ;;
        "b"|"B"|"back"|"BACK")
            return_to_menu=false
            interrupted=false
            return $NAV_BACK
            ;;
        *)
            return_to_menu=false
            interrupted=false
            return $NAV_CONT
            ;;
    esac
}

# Resize Terminal window taller via osascript
function set_terminal_height_to_1200p(){
    osascript <<'EOF'
    tell application "Terminal"
        set b to bounds of front window
        set leftEdge to item 1 of b
        set topEdge to item 2 of b
        set rightEdge to item 3 of b
        set bottomEdge to item 4 of b
        
        -- Keep left/top, keep width same (right - left)
        set newBottomEdge to topEdge + 1200 -- increase height by 1200 pixels (adjust as needed)
        set bounds of front window to {leftEdge, topEdge, rightEdge, newBottomEdge}
    end tell
EOF
}

# Resize Terminal window smaller via osascript
function set_terminal_height_to_512p(){
    osascript <<'EOF'
    tell application "Terminal"
        set b to bounds of front window
        set leftEdge to item 1 of b
        set topEdge to item 2 of b
        set rightEdge to item 3 of b
        set bottomEdge to item 4 of b
        
        -- Keep left/top, keep width same (right - left)
        set newBottomEdge to topEdge + 512 -- set height to 512 pixels (adjust as needed)
        set bounds of front window to {leftEdge, topEdge, rightEdge, newBottomEdge}
    end tell
EOF
}

# Global Navigation menu
show_navigation_prompt() {
    echo
    echo "${BL}Navigation${NC}: ${GR}⮑${NC}  Continue | ${GR}B${NC} Back | ${GR}^C${NC} Interrupt/Exit | ${GR}Q${NC} Main Menu "
    echo 
}

# Function to get menu item by index (simulates array access)
get_menu_item() {
    local index=$1
    case $index in
        0) echo " 1) 🗑️  ${BO}${GR}Run UAD Cleanup${NC}" ;;
        1) echo " 2) 🔍 ${BO}${GR}UAD Cleanup [DRY RUN]${NC}" ;;
        2) echo " 3) ⚙️  ${BO}${GR}Show Preferences${NC}" ;;
        3) echo " 4) ↪️  ${BO}${GR}Import Preferences${NC}" ;;
        4) echo " 5) 🔄 ${BO}${GR}Check For Updates${NC}" ;;
        5) echo " 6) 📝 ${BO}${GR}ChangeLog${NC}" ;;
        *) echo "" ;;
    esac
}

# Function to get total number of menu items
get_menu_item_count() {
    echo 6
}

# Simple two-column layout (bash 3.2 compatible)
display_two_column_menu() {
    local num_items=$(get_menu_item_count)
    local mid_point=$(( (num_items + 1) / 1 ))
    
    for ((i=0; i<mid_point; i++)); do
        local left_item=$(get_menu_item $i)
        local right_index=$((i + mid_point))
        local right_item=""
        
        if [[ $right_index -lt $num_items ]]; then
            right_item=$(get_menu_item $right_index)
        fi
        
        # Simple formatting - no calculations, just basic spacing
        printf "%-50s %s\n" "$left_item" "$right_item"
    done
}

# Main Menu function
main_menu() {
    while true; do
        trap - SIGINT
        # set_terminal_height_to_512p
        clear
        echo -e "${GR}===========================${NC}"
        echo -e "🛠️  ${BO}UAD Plugins Tool v2.0 🛠️${NC}"
        echo -e "${GR}===========================${NC}"
        show_navigation_prompt        
        echo "${GR}Choose an option:${NC}"
        echo
        display_two_column_menu
        # echo
        read -rp "➡️  ${GR}Enter your choice (or ${BL}navigation${NC} ${GR}choice)${NC}: " choice
        echo
        handle_navigation_input "$choice"
        nav=$?
        if   [[ $nav -eq $NAV_BACK ]]; then 
            continue
        # elif [[ $nav -eq $NAV_BACK ]]; then 
        #     continue  # back to main menu
        fi
        case $choice in
            1) run_uad_cleanup ;;
            2) run_uad_cleanup_dry_run ;;
            3) show_preferences ;;
            4) import_preferences ;;
            5) check_for_updates ;;
            6) changelog ;;
            *) 
                echo -ne "❌ ${RE}Invalid choice.${NC} Please try again. "
                sleep 1
                continue
                ;;
        esac
    done
}

#====1==== 🗑️ Run UAD Cleanup
function run_uad_cleanup() {
    while true; do    
        return_to_menu=true
        trap 'echo; echo "Returning to main menu..."; return_to_menu=true; return' SIGINT
        clear
        echo "${GR}======================${NC}"
        echo "${NC}1) 🗑️  Run UAD Cleanup${NC}"
        echo "${GR}======================${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt
        echo -e "${GR}${BO}WARNING: ${GR}Cleanup will now run, moving any unused UAD plugins out of their${NC}"
        echo -e "${GR}plugin folders, into a new 'UAD_Backup' folder on the desktop.${NC}"
        echo
        read -rp "${BO}Are you sure you want to continue?${NC} [y/n]: " confirm
        echo
        handle_navigation_input "$confirm"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then 
            break
        fi

        if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
            echo
            echo -e "${RE}Operation cancelled.${NC}"
            break
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

        # Use the plugins=() array defined at the top of the script

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
        
        # Counters for summary
        component_count=0
        aax_count=0
        vst_count=0
        vst_mono_count=0
        vst3_count=0
        docs_count=0
        total_count=0

        set_terminal_height_to_1200p

        # Loop through each plugin name
        for plugin in "${plugins[@]}"; do
            # Component path
            component_path="$component_base/${plugin}.component"
            # AAX path
            aax_path="$aax_base/${plugin}.aaxplugin"

            # === Component ===
            if [ -e "$component_path" ]; then
                mv "$component_path" "$component_dir/" && echo -e "🗑️  ${GR}AU moved for:           $plugin${NC}"
                ((component_count++))
            # else
                # echo "❔ AU not found for:       $plugin"
            fi

            # === AAX ===
            if [ -e "$aax_path" ]; then
                mv "$aax_path" "$aax_dir/" && echo -e "🗑️  ${GR}AAX moved for:          $plugin${NC}"
                ((aax_count++))
            # else
                # echo "❔ AAX not found for:      $plugin"
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
                    mv "$vst_path" "$vst_dir/" && echo -e "🗑️  ${GR}VST moved for:          $plugin${NC}"
                    vst_found=true
                    ((vst_count++))
                fi

                # Move VST (m)  if it exists
                if [ -e "$vst_path_m" ]; then
                    mv "$vst_path_m" "$vst_mono_dir/" && echo -e "🗑️  ${GR}VST (m) moved for:      $plugin${NC}"
                    vst_mono_found=true
                    ((vst_mono_count++))
                fi

                # Move VST3  if it exists
                if [ -e "$vst3_path" ]; then
                    mv "$vst3_path" "$vst3_dir/" && echo -e "🗑️  ${GR}VST3 moved for:         $plugin${NC}"
                    vst3_found=true
                    ((vst3_count++))
                fi
            done

            # After loop, show a single message per format if nothing was found
            # if [ "$vst_found" = false ]; then
            #     echo "❔ VST not found for:      $plugin"
            # fi
            # if [ "$vst_mono_found" = false ]; then
            #     echo "❔ VST (m) not found for:  $plugin"
            # fi
            # if [ "$vst3_found" = false ]; then
            #     echo "❔ VST3 not found for:     $plugin"
            # fi

            # Find matching PDF first
            doc_path=$(find "$docs_base" -type f -iname "*${plugin#UAD }*.pdf" -print -quit)

            if [ -n "$doc_path" ]; then
                mv "$doc_path" "$docs_dir/" && echo -e "🗑️  ${GR}PDF moved for:          $plugin${NC}"
                ((docs_count++))
            # else
                # echo "❔ PDF not found for:      $plugin"
            fi

        done
            # Move the UAD Plug-Ins Manual.pdf file if it exists
            uad_manual="$docs_base/UAD Plug-Ins Manual.pdf"
            if [ -e "$uad_manual" ]; then
                mv "$uad_manual" "$docs_dir/" && echo -e "🗑️  ${GR}PDF moved for:          UAD Plug-Ins Manual${NC}"
                ((docs_count++))
            # else
            #     echo "❔ PDF not found for:      UAD Plug-Ins Manual"
            fi

        echo
        echo -e "✅ ${GR}Done!${NC}"
        echo
        echo -e "${GR}============================${NC}"
        echo -e "📊 ${BO}Cleanup Summary:${NC}"
        printf "   AUs:      %3d files moved\n" "$component_count"
        printf "   AAX:      %3d files moved\n" "$aax_count"
        printf "   VSTs:     %3d files moved\n" "$vst_count"
        printf "   VST Mono: %3d files moved\n" "$vst_mono_count"
        printf "   VST3s:    %3d files moved\n" "$vst3_count"
        printf "   PDFs:     %3d files moved\n" "$docs_count"
        total_count=$((component_count + aax_count + vst_count + vst_mono_count + vst3_count + docs_count))
        printf "   ${BO}Total:    %3d files moved${NC}\n" "$total_count"    
        echo -e "${GR}============================${NC}"
        echo
        echo -e "📝 ${BO}Next Steps:${BO}"
        echo -e "   ${GR}Check the 'UAD_Backup' folder on your desktop to either backup or delete 🗑️.${NC}"

        show_navigation_prompt

        return_to_menu=true
        interrupted=false
        trap 'echo; echo "returning from func 1"; return' SIGINT

        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice${NC}): " input

        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then 
            set_terminal_height_to_512p
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            set_terminal_height_to_512p
            continue
        else [[ $nav -eq $NAV_CONT ]]
            set_terminal_height_to_512p
            break
        fi   
    done
}

#====2==== 🔍 UAD Cleanup [DRY RUN]
function run_uad_cleanup_dry_run() {
    while true; do    
        return_to_menu=true
        trap 'echo; echo "Returning to main menu..."; return_to_menu=true; return' SIGINT
        clear
        echo "${GR}===========================${NC}"
        echo "${NC}2) 🔍 UAD Cleanup [DRY RUN]${NC}"
        echo "${GR}===========================${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt
        echo -e "${BO}DRY RUN MODE: ${GR}This will show what WOULD be moved without actually moving"
        echo "anything. No files will be modified or moved during this dry run.${NC}"
        echo
        read -rp "${BO}Continue with dry run?${NC} [y/n]: " confirm
        echo
        handle_navigation_input "$confirm"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then 
            break
        fi

        if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
            echo
            echo -e "${RE}Operation cancelled.${NC}"
            break
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

        echo -e "${BO}Would create directories:${NC}"
        echo "${CY}$vst_dir"
        echo "$vst_mono_dir" 
        echo "$vst3_dir"
        echo "$component_dir"
        echo "$aax_dir"
        echo "$docs_dir${NC}"
        echo

        # Use the plugins=() array defined at the top of the script

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

        # Counters for summary
        component_count=0
        aax_count=0
        vst_count=0
        vst_mono_count=0
        vst3_count=0
        docs_count=0
        total_count=0

        set_terminal_height_to_1200p

        # Loop through each plugin name
        for plugin in "${plugins[@]}"; do
            # Component path
            component_path="$component_base/${plugin}.component"
            # AAX path
            aax_path="$aax_base/${plugin}.aaxplugin"

            # === Component ===
            if [ -e "$component_path" ]; then
                # mv "$component_path" "$component_dir/" && echo -e "${GR}AU moved for:          $plugin${NC}"
                echo -e "🗑️  ${BL}Would move AU for:      $plugin${NC}"
                ((component_count++))
            # else
            #     echo "❔ AU not found for:       $plugin"
            fi

            # === AAX ===
            if [ -e "$aax_path" ]; then
                # echo -e "${BL}[DRY RUN] Would move AAX:  $aax_path → $aax_dir/${NC}"
                echo -e "🗑️  ${BL}Would move AAX for:     $plugin${NC}"
                ((aax_count++))
            # else
            #     echo "❔ AAX not found for:      $plugin"
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

                # Check VST if it exists
                if [ -e "$vst_path" ]; then
                    # mv "$vst_path" "$vst_dir/" && echo -e "${GR}VST moved for:         $plugin${NC}"
                    echo -e "🗑️  ${BL}Would move VST for:     $plugin${NC}"
                    vst_found=true
                    ((vst_count++))
                fi

                # Check VST (m) if it exists
                if [ -e "$vst_path_m" ]; then
                    # mv "$vst_path_m" "$vst_mono_dir/" && echo -e "${GR}VST (m) moved for:     $plugin${NC}"
                    echo -e "🗑️  ${BL}Would move VST (m) for: $plugin${NC}"
                    vst_mono_found=true
                    ((vst_mono_count++))
                fi

                # Check VST3 if it exists
                if [ -e "$vst3_path" ]; then
                    # mv "$vst3_path" "$vst3_dir/" && echo -e "${GR}VST3 moved for:        $plugin${NC}"
                    echo -e "🗑️  ${BL}Would move VST3 for:    $plugin${NC}"
                    vst3_found=true
                    ((vst3_count++))
                fi
            done

            # After loop, show a single message per format if nothing was found
            # if [ "$vst_found" = false ]; then
            #     echo "❔ VST not found for:      $plugin"
            # fi
            # if [ "$vst_mono_found" = false ]; then
            #     echo "❔ VST (m) not found for:  $plugin"
            # fi
            # if [ "$vst3_found" = false ]; then
            #     echo "❔ VST3 not found for:     $plugin"
            # fi

            # Find matching PDF first
            doc_path=$(find "$docs_base" -type f -iname "*${plugin#UAD }*.pdf" -print -quit)

            if [ -n "$doc_path" ]; then
                # mv "$doc_path" "$docs_dir/" && echo -e "${GR}PDF moved for:         $plugin${NC}"
                echo -e "🗑️  ${BL}Would move PDF for:     $plugin${NC}"
                ((docs_count++))
            # else
                # echo "❔ PDF not found for:      $plugin"
            fi
        done

        # Check for UAD Plug-Ins Manual.pdf
        uad_manual="$docs_base/UAD Plug-Ins Manual.pdf"
        if [ -e "$uad_manual" ]; then
            # mv "$uad_manual" "$docs_dir/" && echo -e "${GR}PDF moved for:         UAD Plug-Ins Manual${NC}"
            echo -e "🗑️  ${BL}Would move PDF for:     UAD Plug-Ins Manual${NC}"
            ((docs_count++))
        # else
        #     echo "❔ PDF not found for:      UAD Plug-Ins Manual"
        fi

        echo
        echo -e "${GR}=====================================${NC}"
        echo -e "📊 ${BO}Cleanup Summary:${NC}"
        printf "   AUs:      %3d files would be moved\n" "$component_count"
        printf "   AAX:      %3d files would be moved\n" "$aax_count"
        printf "   VSTs:     %3d files would be moved\n" "$vst_count"
        printf "   VST Mono: %3d files would be moved\n" "$vst_mono_count"
        printf "   VST3s:    %3d files would be moved\n" "$vst3_count"
        printf "   PDFs:     %3d files would be moved\n" "$docs_count"
        total_count=$((component_count + aax_count + vst_count + vst_mono_count + vst3_count + docs_count))
        printf "   ${BO}Total:    %3d files would be moved${NC}\n" "$total_count"    
        echo -e "${GR}=====================================${NC}"
        echo
        echo -e "📝 ${BO}Next Steps:${BO}"
        echo -e "   ${GR}Choose '${NC}🗑️  ${GR}Run UAD Cleanup' from the main menu when ready!${NC}"

        show_navigation_prompt

        return_to_menu=true
        interrupted=false
        trap 'echo; echo "returning from func 1"; return' SIGINT

        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice${NC}): " input

        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then 
            set_terminal_height_to_512p
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            set_terminal_height_to_512p
            continue
        else [[ $nav -eq $NAV_CONT ]]
            set_terminal_height_to_512p
            break
        fi   
    done
}

#====3==== ⚙️ Show Preferences
function show_preferences() {
    while true; do
        return_to_menu=true
        trap 'echo; echo "Returning to main menu..."; return_to_menu=true; return' SIGINT
        set_terminal_height_to_1200p
        clear
        echo "${GR}======================${NC}"
        echo "${NC}3) ⚙️  Show Preferences${NC}"
        echo "${GR}======================${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt
        
        echo -e "${BO}${GR}Current Plugin Configuration:${NC}"
        echo
        
        # Count commented and uncommented plugins
        commented_count=0
        uncommented_count=0
        
        # Display all plugins in a single list with status indicators
        echo -e "${BO}KEY:${NC}"
        echo -e "${GR}====${NC}"
        echo -e "✅ = ${GR}Will be kept${NC}  |  ❌ = ${RE}Will be removed${NC}"
        echo
        echo -e "${GR}All plugins with their removal status:${NC}"
        echo
        echo -e "${BO}PLUGIN LIST:${NC}"
        echo -e "${GR}============${NC}"
        # Read the current script to extract both commented and uncommented plugins
        in_plugins_section=false
        while IFS= read -r line; do
            if [ "$line" = "plugins=(" ]; then
                in_plugins_section=true
                continue
            elif [ "$line" = ")" ] && [ "$in_plugins_section" = true ]; then
                in_plugins_section=false
                break
            elif [ "$in_plugins_section" = true ]; then
                # Check if this line contains a plugin definition
                if echo "$line" | grep -q '^[[:space:]]*#\?[[:space:]]*".*"'; then
                    if echo "$line" | grep -q '^[[:space:]]*#'; then
                        # Commented plugin (will be kept)
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*#[[:space:]]*"\([^"]*\)".*/\1/')
                        echo -e "✅ $plugin_name"
                        ((commented_count++))
                    else
                        # Uncommented plugin (will be removed)
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*"\([^"]*\)".*/\1/')
                        echo -e "❌ $plugin_name"
                        ((uncommented_count++))
                    fi
                fi
            fi
        done < "$0"
        
        echo
        echo -e "${BO}KEY:${NC}"
        echo -e "${GR}====${NC}"
        echo -e "✅ = ${GR}Will be kept${NC}  |  ❌ = ${RE}Will be removed${NC}"
        echo
        echo "${GR}==========================================${NC}"
        echo -e "📊 ${BO}Summary:${NC}"
        # echo -e "   ${GR}Active plugins:   ${commented_count}${NC}  (will be kept)"
        # echo -e "   ${RE}Inactive plugins: ${uncommented_count}${NC} (will be removed)"
        # echo -e "   ${BO}Total plugins:    $((commented_count + uncommented_count))${NC}"
        printf "   ${GR}Active plugins:   %3d${NC} (will be kept)\n" $((commented_count - 1))
        printf "   ${RE}Inactive plugins: %3d${NC} (will be removed)\n" $((uncommented_count - 1))
        printf "   ${BO}Total plugins:    %3d${NC}\n" $((commented_count + uncommented_count -1))
        echo "${GR}==========================================${NC}"
        echo
        
        echo -e "📝 ${BO}Next Steps:${BO}"
        echo -e "   ${GR}Run the '🔍 UAD Cleanup [DRY RUN]' or choose '${NC}🗑️  ${GR}Run UAD Cleanup' from${NC}"
        echo -e "   ${GR}the main menu when ready!${NC}"
        show_navigation_prompt
        
        return_to_menu=true
        interrupted=false
        trap 'echo; echo "returning from func 1"; return' SIGINT
        
        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice${NC}): " input
        
        handle_navigation_input "$input"
        nav=$?
        if [[ $nav -eq $NAV_QUIT ]]; then
            set_terminal_height_to_512p
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            set_terminal_height_to_512p
            break # back to main menu
        else # [[ $nav -eq $NAV_CONT ]]
            set_terminal_height_to_512p
            break # return to main menu
        fi
    done
}

#====4==== ↪️ Import Preferences
function import_preferences() {
    while true; do
        return_to_menu=true
        trap 'echo; echo "Returning to main menu..."; return_to_menu=true; return' SIGINT
        clear
        echo "${GR}========================${NC}"
        echo "${NC}4) ↪️  Import Preferences${NC}"
        echo "${GR}========================${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt
        echo -e "This operation will import your plugin preferences from an older version of"
        echo -e "UAD Plugins Tool, and apply them to this new one - automating future updates!"
        echo
        echo -e "A backup will also be saved in the same location as this current script."
        echo        
        # echo -e "${BO}Drag your OLD script file${NC}"
        echo -e "➡️  ${GR}Drag your previous 'UAD_Plugins_Tool.command' file (with your preferences)${NC}"
        echo -e "   ${GR}onto this terminal window and press Enter:${NC}"
        echo

        # Function to validate file path and remove quotes/escaping
        validate_and_clean_path() {
            local input="$1"
            # Remove leading/trailing whitespace
            input=$(echo "$input" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
            
            # Use eval to properly handle escaped paths from drag-and-drop
            eval "set -- $input"
            local clean_path="$1"
            
            if [ -f "$clean_path" ]; then
                echo "$clean_path"
                return 0
            else
                return 1
            fi
        }

        # Get old script path
        while true; do
            read -r old_script_input

            handle_navigation_input "$old_script_input"
            nav=$?
            if   [[ $nav -eq $NAV_QUIT ]]; then 
                return 0
            elif [[ $nav -eq $NAV_BACK ]]; then
                return 0
            fi  

            return_to_menu=true
            interrupted=false
            trap 'echo; echo "returning from func 1"; return' SIGINT

            old_script=$(validate_and_clean_path "$old_script_input")
            if [ $? -eq 0 ]; then
                echo
                echo -e "✅ ${GR}${BO}Old script found${NC}:" 
                echo -e "${old_script}"
                echo
                break
            else
                echo -e "❌ ${RE}File not found. Please try again.${NC}"
                sleep 1
                continue 2
            fi
        done

        # Use current script as the "new" script (latest version)
        new_script="$0"

        # Create temporary directory for processing
        temp_dir="/tmp/uad_plugins_tool_updater_$$"
        mkdir -p "$temp_dir"
        
        # Cleanup function for error handling
        cleanup_temp_files() {
            if [ -d "$temp_dir" ]; then
                rm -rf "$temp_dir"
            fi
            if [ -f "$temp_script" ]; then
                rm -f "$temp_script"
            fi
        }
        
        # Set up trap to ensure cleanup on exit/interrupt
        trap cleanup_temp_files EXIT
        
        echo -e "${BL}→ Extracting plugin preferences from old script...${NC}"

        # Extract old preferences with exact formatting
        old_prefs_file="$temp_dir/old_prefs.txt"
        > "$old_prefs_file"

        # Read old script and extract plugin states with their exact formatting
        in_plugins_section=false
        while IFS= read -r line; do
            if [ "$line" = "plugins=(" ]; then
                in_plugins_section=true
                continue
            elif [ "$line" = ")" ] && [ "$in_plugins_section" = true ]; then
                in_plugins_section=false
                break
            elif [ "$in_plugins_section" = true ]; then
                # Extract plugin name and state
                if echo "$line" | grep -q '^[[:space:]]*#\?[[:space:]]*".*"'; then
                    # Extract the plugin name - handle both commented and uncommented lines
                    if echo "$line" | grep -q '^[[:space:]]*#'; then
                        # Commented line
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*#[[:space:]]*"\([^"]*\)".*/\1/')
                        echo "${plugin_name}:commented" >> "$old_prefs_file"
                    else
                        # Uncommented line
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*"\([^"]*\)".*/\1/')
                        echo "${plugin_name}:uncommented" >> "$old_prefs_file"
                    fi
                fi
            fi
        done < "$old_script"

        # echo -e "${CY}→ Reading latest plugin list...${NC}"

        # Extract new plugin list
        new_plugins_file="$temp_dir/new_plugins.txt"
        > "$new_plugins_file"

        in_plugins_section=false
        while IFS= read -r line; do
            if [ "$line" = "plugins=(" ]; then
                in_plugins_section=true
                continue
            elif [ "$line" = ")" ] && [ "$in_plugins_section" = true ]; then
                in_plugins_section=false
                break
            elif [ "$in_plugins_section" = true ]; then
                if echo "$line" | grep -q '^[[:space:]]*#\?[[:space:]]*".*"'; then
                    # Extract plugin name - handle both commented and uncommented lines
                    if echo "$line" | grep -q '^[[:space:]]*#'; then
                        # Commented line
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*#[[:space:]]*"\([^"]*\)".*/\1/')
                    else
                        # Uncommented line
                        plugin_name=$(echo "$line" | sed 's/^[[:space:]]*"\([^"]*\)".*/\1/')
                    fi
                    # Only add if plugin_name is not empty and doesn't contain quotes
                    if [ -n "$plugin_name" ] && ! echo "$plugin_name" | grep -q '"'; then
                        echo "${plugin_name}" >> "$new_plugins_file"
                    fi
                fi
            fi
        done < "$new_script"

        echo -e "${BL}→ Updating this script with your preferences...${NC}"

        # Create a backup of the current script
        cp "$0" "$0_backup.command"
        
        # Create temporary file for the updated script
        temp_script="/tmp/uad_plugins_tool_updated_$$.command"
        
        # Process the current script and only update the plugins array
        in_plugins_section=false
        > "$temp_script"

        while IFS= read -r line || [ -n "$line" ]; do
            if [ "$line" = "plugins=(" ]; then
                # Start of plugins section - write the opening
                in_plugins_section=true
                echo "$line" >> "$temp_script"
                
                # Process all plugins and apply user preferences
                while IFS= read -r plugin_name; do
                    # Check if we have a preference for this plugin
                    if grep -q "^${plugin_name}:uncommented$" "$old_prefs_file"; then
                        # Plugin was active in old script - keep it active
                        echo "    \"${plugin_name}\"" >> "$temp_script"
                    elif grep -q "^${plugin_name}:commented$" "$old_prefs_file"; then
                        # Plugin was commented in old script - keep it commented
                        echo "#    \"${plugin_name}\"" >> "$temp_script"
                    else
                        # New plugin not in old script - add as commented (default)
                        echo "#    \"${plugin_name}\"" >> "$temp_script"
                    fi
                done < "$new_plugins_file"
                
            elif [ "$line" = ")" ] && [ "$in_plugins_section" = true ]; then
                # End of plugins section
                in_plugins_section=false
                echo "$line" >> "$temp_script"
            elif [ "$in_plugins_section" = true ]; then
                # Skip the original plugin lines - we've already processed them
                continue
            else
                # Regular line - copy as-is
                echo "$line" >> "$temp_script"
            fi
        done < "$0"

        # Replace the current script with the updated version
        if mv "$temp_script" "$0"; then
            # Make the script executable
            chmod +x "$0"
        else
            echo -e "❌ ${RE}Error: Failed to update script. Cleaning up temporary files...${NC}"
            cleanup_temp_files
            return 1
        fi

        # Count statistics with error handling
        if [ -f "$old_prefs_file" ]; then
            preserved_uncommented=$(grep -c ":uncommented$" "$old_prefs_file" 2>/dev/null || echo "0")
            preserved_commented=$(grep -c ":commented$" "$old_prefs_file" 2>/dev/null || echo "0")
        else
            preserved_uncommented="0"
            preserved_commented="0"
        fi
        
        if [ -f "$new_plugins_file" ]; then
            total_new_plugins=$(wc -l < "$new_plugins_file" 2>/dev/null || echo "0")
        else
            total_new_plugins="0"
        fi
        
        # Ensure all variables are numeric (bash 3.2 compatible)
        preserved_uncommented=${preserved_uncommented:-0}
        preserved_commented=${preserved_commented:-0}
        total_new_plugins=${total_new_plugins:-0}
        
        # Validate that variables contain only digits
        if ! echo "$preserved_uncommented" | grep -q '^[0-9]*$'; then
            preserved_uncommented="0"
        fi
        if ! echo "$preserved_commented" | grep -q '^[0-9]*$'; then
            preserved_commented="0"
        fi
        if ! echo "$total_new_plugins" | grep -q '^[0-9]*$'; then
            total_new_plugins="0"
        fi
        
        # Calculate new plugins added
        new_plugins_added=$((total_new_plugins - preserved_uncommented - preserved_commented))

        # Clean up temporary files
        cleanup_temp_files

        echo
        echo -e "✅ ${GR}${BO}Updated!${NC}"
        # echo
        # echo -e "${GR}==========================================${NC}"
        # echo -e "📊 Summary:"
        # echo -e "   • Preserved plugins to keep:       ${preserved_commented}"        
        # echo -e "   • Preserved plugins for removal:   ${preserved_uncommented}"
        # echo -e "   • New plugins added (commented):   ${new_plugins_added}"
        # echo -e "   • Total plugins in updated script: ${total_new_plugins}"
        # echo -e "${GR}==========================================${NC}"
        # echo
        # echo -e "${GR}🔄 Overwriting this script with your preferences...${NC}"
        echo

        # show_navigation_prompt
        
        return_to_menu=true
        interrupted=false
        trap 'echo; echo "returning from func 1"; return' SIGINT

        sleep 1

        # echo -e "➡️  ${GR}Press Enter to return to the main menu.${NC}"
        # read -rp "" input

        # handle_navigation_input "$input"
        # nav=$?
        # if   [[ $nav -eq $NAV_QUIT ]]; then
        #     return 0
        # elif [[ $nav -eq $NAV_BACK ]]; then 
        #     break
        # else
        #     # Restart the script with the updated version
        #     exec "$0" 
        # fi
        echo -e "${GR}🔄 Returning to Main Menu...${NC}"
        sleep 1
        
        # Restart the script with the updated version
        exec "$0"        
    done
}

#====5==== 🔄 Check For Updates
function check_for_updates() {
    open https://shop.ryansummer.com/p/uad-plugins-tool/
}

#====6==== 📝 ChangeLog
function changelog() {
    set_terminal_height_to_1200p
    while true; do
        return_to_menu=true
        trap 'echo; echo "Returning to main menu..."; return_to_menu=true; return' SIGINT
        clear
        echo "${GR}================================${NC}"
        echo "${NC}6) 📝 UAD Plugins Tool ChangeLog${NC}"
        echo "${GR}================================${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt
        echo "${BO}Changes:${NC}"
        echo "
${GR}${BO}UAD Plugins Tool v1.0.0:${NC}
- Initial Release${NC}

${GR}${BO}UAD Plugins Tool v1.0.1:${NC}
- This update includes time-saving optimizations for searching in plugin folders
  with thousands of plugins.
- Adds '/Universal Audio' to directory paths to reduce overall search time
- Creates a temporary 'Universal Audio' directory for Audio Unit's to avoid
  searching all plugins in the Components directory${NC}

${GR}${BO}UAD Plugins Tool v1.1.0:${NC}
- completely redesigned the script to move unused plugins rather than search and
  permanently delete them. (This allows for the process to run in seconds rather
  than minutes. Unused plugins now get moved to a folder on the the desktop
  called 'UAD_Backup' which contains the following subfolders: AAX, Component,
  Documentation, VST, VST_Mono & VST3).
- removed the function to delete the UAD uninstaller, as it's file size is negl-
  igible and may help users properly clean up UAD files if they need to use this  
- removed the need to comment out plugin titles under the documentation section
  in the script. (This is now handled by the section under '# List of plugin
  names')
- edited Instructions.txt to reflect this new implementation${NC}

${GR}${BO}UAD Plugins Tool v1.1.1:${NC}
- changed the extension of the script to .command instead of a .sh in order to
  run it simply by double clicking it
- added a safety confirmation requiring a 'y' or 'n' to prevent running by 
  accident
- added instructions on de-quarantining the script so that it's not 
  automatically blocked by Apple's gatekeeper (due to me not yet being in the
  paid Apple Developer Program.)
- simplified, clarified & colorized text output
- Updated testing info for macOS Sequoia and UAD Software v11.6.0${NC}

${GR}${BO}UAD Plugins Tool v1.1.2:${NC}
- added support for UAD Software v11.7.0
- added the new 'UAD A-Type Multiband Enhancer' to the list of plugins
- added an icon to the .command file${NC}

${GR}${BO}UAD Plugins Tool v1.1.3:${NC}
- removed the comments from the 'function prep' command in the instructions as 
  this was giving errors when using in terminal
- added support for macOS Sequoia 15.5
- added support for Apple Silicon${NC}

${GR}${BO}UAD Plugins Tool v1.1.4:${NC}
- added menu to script
- added support for UAD Software v11.7.1${NC}

${GR}${BO}UAD Plugins Tool v2.0:${NC}
- ${BO}NEW${NC}: Redesigned UAD Plugins Tool + implemented the following menu options:
  · 1) 🗑️ ${GR} Run UAD Cleanup${NC} - Main cleanup operation
  · 2) 🔍 ${GR}UAD Cleanup [DRY RUN]${NC} - Test what will be removed and kept!
  · 3) ⚙️ ${GR} Show Preferences${NC} - Shows your current preferences with a ✅ or ❌
  · 4) ↪️ ${GR} Import Preferences${NC} - easily merge your old UAD Plugins Tool prefs into
          this new script, as well as future versions of UAD Plugins Tool!
  · 5) 🔄 ${GR}Check For Updates${NC} - instantly opens up the UAD PT landing page
          in your browser
  · 6) 📝 ${GR}ChangeLog${NC} - see the latest changes and improvements
- added support for UAD Software v11.8.1
- added the new 'Maag EQ4 MS' to the plugin list
- added the new 'Shadow Hills Mastering Compressor Class A' to the plugin list${NC}"
        show_navigation_prompt # already padded
        read -rp "➡️  ${GR}Press Enter to check for updates (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        handle_navigation_input "$input"
        nav=$?
        if [[ $nav -eq $NAV_QUIT ]]; then
            set_terminal_height_to_512p
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            set_terminal_height_to_512p
            break # back to main menu
        else # [[ $nav -eq $NAV_CONT ]]
            open https://shop.ryansummer.com/p/uad-plugins-tool/
            set_terminal_height_to_512p
            # break # restart operation selection
        fi
    done    
}

# Script entry point
main_menu
# Intentionally left blank
