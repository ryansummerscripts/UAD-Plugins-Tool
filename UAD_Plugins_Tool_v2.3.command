#!/usr/bin/env bash
#                                                                       ____
#  _   _  _   ___    ___ _           _           _____         _   ____|    \
# | | | |/_\ |   \  | _ \ |_  _ __ _(_)_ _  ___ |_   _|__  ___| | (____|     `.___
# | |_| / _ \| |) | |  _/ | || / _` | | ' \(_-<   | |/ _ \/ _ \ |  ____|       _|_
#  \___/_/ \_\___/  |_| |_|\_,_\__, |_|_||_/__/   |_|\___/\___/_| (____|     .'
#                              |___/                                   |____/                      
#
# Version: 2.3
# by Ryan Summer
# https://shop.ryansummer.com/p/uad-plugins-tool/

# === List of plugin names ===
# (delete a '#' below to REMOVE a plugin)

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
#    "UAD elysia alpha compressor V2"
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
#    "UAD SPL Vitalizer MK3-T"
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
NC=$'\033[0m'
BO=$'\033[1m'
GY=$'\033[2m'
RE=$'\033[1;31m'
GR=$'\033[1;32m'
YE=$'\033[1;33m'
BL=$'\033[1;34m'
MA=$'\033[1;35m'
CY=$'\033[1;36m'

# navigation codes
NAV_BACK=0
NAV_CONT=1
NAV_QUIT=2

interrupted=false
current_main_menu_choice=""
current_sub_menu_choice=""
TOTAL_MENU_ITEM_COUNT=6

# Navigation handlers
handle_navigation_input() {
    local choice="$1"
    case "$choice" in
        "q"|"Q"|"quit"|"QUIT"|"exit"|"EXIT")
            interrupted=false
            return $NAV_QUIT
            ;;
        "b"|"B"|"back"|"BACK")
            interrupted=false
            return $NAV_BACK
            ;;
        *)
            interrupted=false
            return $NAV_CONT
            ;;
    esac
}
handle_main_menu_AZ_navigation_input() {
    local direction="$1" current="$2"
    if [[ "$direction" == "a" || "$direction" == "A" ]]; then
        current_main_menu_choice=$(( (current - 2 + TOTAL_MENU_ITEM_COUNT) % TOTAL_MENU_ITEM_COUNT + 1 ))
        return 0
    elif [[ "$direction" == "z" || "$direction" == "Z" ]]; then
        current_main_menu_choice=$(( current % TOTAL_MENU_ITEM_COUNT + 1 ))
        return 0
    fi
    return 1
}
# Resize Terminal window for either Terminal.app or iTerm2
resize_terminal() {
	local cols="$1"
	local rows="$2"
	
	if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
		if [ -n "$cols" ] && [ -n "$rows" ]; then
			# Both specified - resize both (use single -e to avoid timing issues)
			osascript -e "tell application \"Terminal\" to tell front window to set {number of columns, number of rows} to {$cols, $rows}" >/dev/null 2>&1
		elif [ -n "$cols" ]; then
			# Only width specified
			osascript -e "tell application \"Terminal\" to tell front window to set number of columns to $cols" >/dev/null 2>&1
		elif [ -n "$rows" ]; then
			# Only height specified
			osascript -e "tell application \"Terminal\" to tell front window to set number of rows to $rows" >/dev/null 2>&1
		fi
	elif [ "$TERM_PROGRAM" = "iTerm.app" ]; then
		if [ -n "$cols" ] && [ -n "$rows" ]; then
			# Both specified - use single command
			osascript -e "tell application \"iTerm\" to tell current window to tell current session to set {columns, rows} to {$cols, $rows}" >/dev/null 2>&1
		elif [ -n "$cols" ]; then
			osascript -e "tell application \"iTerm\" to tell current window to tell current session to set columns to $cols" >/dev/null 2>&1
		elif [ -n "$rows" ]; then
			osascript -e "tell application \"iTerm\" to tell current window to tell current session to set rows to $rows" >/dev/null 2>&1
		fi
	else
		# ANSI escape sequences
		if [ -n "$cols" ] && [ -n "$rows" ]; then
			printf "\033[8;${rows};${cols}t"
		elif [ -n "$cols" ]; then
			printf "\033[3;${cols}t"
		elif [ -n "$rows" ]; then
			printf "\033[2;${rows}t"
		fi
	fi
}
# Resize Terminal window taller via osascript
function set_terminal_height_to_2200p() {
	if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
		osascript <<-'EOF' >/dev/null 2>&1
			tell application "Terminal"
				set b to bounds of front window
				set leftEdge to item 1 of b
				set topEdge to item 2 of b
				set rightEdge to item 3 of b
				set bottomEdge to item 4 of b
				-- Keep left/top, keep width same (right - left)
				set newBottomEdge to topEdge + 2200 -- increase height by 2200 pixels
				set bounds of front window to {leftEdge, topEdge, rightEdge, newBottomEdge}
			end tell
		EOF
	elif [ "$TERM_PROGRAM" = "iTerm.app" ]; then
		osascript <<-'EOF' >/dev/null 2>&1
			tell application "iTerm"
				tell current window
					set b to bounds
					set leftEdge to item 1 of b
					set topEdge to item 2 of b
					set rightEdge to item 3 of b
					set bottomEdge to item 4 of b
					-- Keep left/top, keep width same (right - left)
					set newBottomEdge to topEdge + 2200 -- increase height by 2200 pixels
					set bounds to {leftEdge, topEdge, rightEdge, newBottomEdge}
				end tell
			end tell
		EOF
	fi
}
# echo formatting
echo_centered() {
    local text="$1"
    local width=$(tput cols)  # Get current terminal width

    # Remove ANSI color codes to get actual visible length
    local visible_text=$(echo -e "$text" | sed 's/\x1b\[[0-9;]*m//g')
    local text_length=${#visible_text}
    local padding=$(( (width - text_length) / 2 ))
    
    printf "%${padding}s%b\n" "" "$text"
}
echo_n_centered() {
    local text="$1"
    local width=$(tput cols)  # Get current terminal width

    # Remove ANSI color codes to get actual visible length
    local visible_text=$(echo -e "$text" | sed 's/\x1b\[[0-9;]*m//g')
    local text_length=${#visible_text}
    local padding=$(( (width - text_length) / 2 ))
    
    printf "%${padding}s%b" "" "$text"
}
echo_justified() {
    local left_text="$1"
    local right_text="$2"
    local width="${3:-80}"  # Default to 80 if not specified, or use $(tput cols)
    
    # Remove ANSI color codes to get actual visible length
    local visible_left=$(echo -e "$left_text" | sed 's/\x1b\[[0-9;]*m//g')
    local visible_right=$(echo -e "$right_text" | sed 's/\x1b\[[0-9;]*m//g')
    
    local left_length=${#visible_left}
    local right_length=${#visible_right}
    
    # Calculate spacing needed between left and right text
    local spacing=$(( width - left_length - right_length ))
    
    # Ensure spacing is at least 1
    if [ "$spacing" -lt 1 ]; then
        spacing=1
    fi
    
    printf "%b%${spacing}s%b\n" "$left_text" "" "$right_text"
}
# ASCII header
display_UAD_Plugins_Tool_header_for_80px() {
    echo -n "${BO}"
    cat <<'EOF'
                                                                      ____
 _   _  _   ___    ___ _           _           _____         _   ____|    \
| | | |/_\ |   \  | _ \ |_  _ __ _(_)_ _  ___ |_   _|__  ___| | (____|     `.___
| |_| / _ \| |) | |  _/ | || / _` | | ' \(_-<   | |/ _ \/ _ \ |  ____|       _|_
 \___/_/ \_\___/  |_| |_|\_,_\__, |_|_||_/__/   |_|\___/\___/_| (____|     .'
                             |___/                                   |____/
EOF
    echo -n "${NC}"
    echo "   ${BL}Created by Ryan Summer${NC}                ${BL}For macOS 10.10-26${NC}           ${BL}v2.3${NC}"
}
# Navigation prompt
show_navigation_prompt_centered() {
    echo
    echo_centered "${BL}Navigation${NC}: ${GR}⮑ ${NC} Continue | ${GR}B${NC} Back | ${GR}^C${NC} Stop | ${GR}A${NC} Previous | ${GR}Z${NC} Next | ${GR}Q${NC} Main Menu"
    echo 
}
# Function to get menu item by index (simulates array access)
get_menu_item() {
    local index=$1
    case $index in
        0) echo " 1) 🗑️  ${BO}${GR}Run UAD Cleanup${NC}" ;;
        1) echo " 2) 🔍 ${BO}${GR}Run UAD Cleanup [DRY RUN]${NC}" ;;
        2) echo " 3) ⚙️  ${BO}${GR}Show Preferences${NC}" ;;
        3) echo " 4) ↪️  ${BO}${GR}Import Preferences${NC}" ;;
        4) echo " 5) 🔧 ${BO}${GR}Check/Fix Permissions${NC}" ;;
        5) echo " 6) 📚 ${BO}${GR}Resources${NC}" ;;
        *) echo "" ;;
    esac
}
# Simple two-column layout (bash 3.2 compatible)
display_two_column_menu() {
    local num_items=$TOTAL_MENU_ITEM_COUNT
    local mid_point=$(( (num_items + 1) / 2 ))
    local right_col=41
    local left_offset=5  # Adjust this value to add spacing before left column (e.g., 2 for 2 spaces)
    
    for ((i=0; i<mid_point; i++)); do
        local left_item=$(get_menu_item $i)
        local right_index=$((i + mid_point))
        local right_item=""
        
        if [[ $right_index -lt $num_items ]]; then
            right_item=$(get_menu_item $right_index)
        fi
        
        # Print left column with offset, move cursor to a fixed column, then print right column
        # Use printf padding: %*s creates a field of 'left_offset' width (right-aligned, empty string fills with spaces)
        if [[ $left_offset -gt 0 ]]; then
            printf "%*s%s" $left_offset "" " $left_item"
        else
            printf "%s" " $left_item"
        fi
        printf '\033[%dG' $right_col
        printf "%s\n" "   $right_item"
    done
}
# Main Menu function
main_menu() {
    while true; do
        trap - SIGINT
        resize_terminal 80 24
        # If we have a pending choice from A/Z navigation, skip menu display
        if [[ -z "$current_main_menu_choice" ]]; then
            clear
            display_UAD_Plugins_Tool_header_for_80px
            echo
            echo
            echo "     ${GR}Choose an option:${NC}"
            echo
            display_two_column_menu
            echo
            echo
            echo_centered "${BL}Navigation${NC}: ${GR}⮑ ${NC} Continue | ${GR}B${NC} Back | ${GR}^C${NC} Exit | ${GR}A${NC} Previous | ${GR}Z${NC} Next | ${GR}Q${NC} Main Menu"
            echo
            echo_n_centered "➡️  ${GR}Enter your choice (or ${BL}navigation${NC} ${GR}choice):${NC} "
            read -r main_menu_choice
            handle_navigation_input "$main_menu_choice"
            nav=$?
            if   [[ $nav -eq $NAV_BACK ]]; then 
                echo_n_centered "❌ ${RE}Nothing to go back to.${NC} ${BO}Use ^C to exit.${NC} "
                read -r -t 1 -n 1
                continue
            elif [[ "$main_menu_choice" == "a" ]] || [[ "$main_menu_choice" == "A" ]]; then
                main_menu_choice=6
            elif [[ "$main_menu_choice" == "z" ]] || [[ "$main_menu_choice" == "Z" ]]; then
                main_menu_choice=1
            elif [[ $nav -eq $NAV_QUIT ]]; then 
                echo_n_centered "❌ ${RE}Invalid choice.${NC} ${BO}Use ^C to exit.${NC} "
                read -r -t 1 -n 1
                continue
            fi
        else
            # Use the pending choice from A/Z navigation
            main_menu_choice="$current_main_menu_choice"
            current_main_menu_choice=""
        fi

        case $main_menu_choice in
            1) run_uad_cleanup ;;
            2) run_uad_cleanup_dry_run ;;
            3) show_preferences ;;
            4) import_preferences ;;
            5) check_or_fix_permissions ;;
            6) resources ;;
            *) 
                echo_n_centered "❌ ${RE}Invalid choice.${NC} Please try again. "
                read -r -t 1 -n 1
                continue
                ;;
        esac
    done
}
# Function to check perms before removal
check_permissions_status() {
    # Directories to check
    dirs=(
        "/Library/Audio/Plug-Ins/VST/Universal Audio"
        "/Library/Audio/Plug-Ins/VST3/Universal Audio"
        "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio"
        "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio"
        "/Applications/Universal Audio/Documentation"
        # "/Applications/Universal Audio"
        "/Library/Audio/Plug-Ins/Components"
    )

    check_AU_plugins() {
        # check permissions for individual AU UAD plugins
        local AU_plugin_issue=0
        local found=0

        # Check writability of ALL plugins
        for plugin in /Library/Audio/Plug-Ins/Components/UAD\ *.component; do
            # Skip if no match
            if [ ! -e "$plugin" ]; then
                continue
            fi

            found=1
            
            if [ ! -w "$plugin" ]; then
                # AU_plugin_issue=1
                ((AU_plugin_issue++))
            fi
        done

        # If no plugins found, return
        if [ $found -eq 0 ]; then
            return
        fi

        # Return result through global flag
        # if   [ $AU_plugin_issue -eq 1 ]; then
        if [ $AU_plugin_issue -gt 0 ]; then
            no_write_flag=1
        fi
    }

    # Flag
    no_write_flag=0

    # check permissions for all other UAD directories
    for dir in "${dirs[@]}"; do
        if [ -d "$dir" ]; then
            if [ ! -w "$dir" ]; then
                no_write_flag=1
            fi
        fi
    done

    # Now check individual plugins
    check_AU_plugins
}
# Function to list perms
list_permission_status() {
    # Directories to check
    dirs=(
        "/Library/Audio/Plug-Ins/VST/Universal Audio"
        "/Library/Audio/Plug-Ins/VST3/Universal Audio"
        "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio"
        "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio"
        "/Applications/Universal Audio/Documentation"
        # "/Applications/Universal Audio"
        "/Library/Audio/Plug-Ins/Components"
    )

    get_all_owners() {
        local dir="$1"
        local primary_owner=$(stat -f "%Su" "$dir" 2>/dev/null || echo "unknown")
        local all_owners="$primary_owner"
        
        # Check for ACLs and extract additional users
        if ls -led "$dir" 2>/dev/null | grep -q "@"; then
            # Extract ACL users - match format like " 0: user:uad3 allow..."
            local acl_users=$(ls -led "$dir" 2>/dev/null | grep "^ *[0-9]*: *user:" | sed 's/.*user:\([^ ]*\).*/\1/' | sort -u)

            if [[ -n "$acl_users" ]]; then
                # Add ACL users to the list (avoid duplicates)
                while IFS= read -r user; do
                    if [[ -n "$user" && "$user" != "$primary_owner" ]]; then
                        all_owners="$all_owners, $user"
                    fi
                done <<< "$acl_users"
            fi
        fi
        
        echo "$all_owners"
    }

    check_AU_plugins() {
        # check permissions for individual AU UAD plugins
        local AU_plugin_issue=0
        local all_problematic_owners=""
        local all_ok_owners=""
        local found=0
        
        # Check writability of ALL plugins
        for plugin in /Library/Audio/Plug-Ins/Components/UAD\ *.component; do
            # Skip if no match
            if [ ! -e "$plugin" ]; then
                continue
            fi

            found=1
            
            if [ ! -w "$plugin" ]; then
                # AU_plugin_issue=1
                ((AU_plugin_issue++))
                # Collect owner of this problematic plugin
                local owner=$(get_all_owners "$plugin")
                # Add to list (avoid duplicates)
                if [ -z "$all_problematic_owners" ]; then
                    all_problematic_owners="$owner"
                elif [[ ! "$all_problematic_owners" =~ (^|, )$owner(,|$) ]]; then
                    all_problematic_owners="$all_problematic_owners, $owner"
                fi
            fi
        done
        
        # If no plugins found, return
        if [ $found -eq 0 ]; then
            return
        fi
        
        # Display result
        # if [ $AU_plugin_issue -eq 1 ]; then
        if [ $AU_plugin_issue -gt 0 ]; then
            no_write_flag=1
            echo "❌ ${RE}No permission:${NC} /Library/Audio/Plug-Ins/Components/UAD *.component ${RE}$AU_plugin_issue issue(s)${NC}"
            echo "   ${BO}Current Owner:${NC} ${GR}$all_problematic_owners${NC}"
        else
            # All OK - sample first plugin only for performance
            for plugin in /Library/Audio/Plug-Ins/Components/UAD\ *.component; do
                if [ -e "$plugin" ]; then
                    all_ok_owners=$(get_all_owners "$plugin")
                    break
                fi
            done
            echo "✅ ${GR}Permission OK:${NC} /Library/Audio/Plug-Ins/Components/UAD *.component"
            echo "   ${BO}Current Owner:${NC} ${GR}$all_ok_owners${NC}"
        fi
    }

    # Flag
    no_write_flag=0

    # check permissions for all other UAD directories
    for dir in "${dirs[@]}"; do
        if [ -d "$dir" ]; then
            if [ ! -w "$dir" ]; then
                echo "❌ ${RE}No permission:${NC} $dir"
                no_write_flag=1
            else
                echo "✅ ${GR}Permission OK:${NC} $dir"
            fi
            # Show all owners on separate line
            all_owners=$(get_all_owners "$dir")
            echo "   ${BO}Current Owner:${NC} ${GR}$all_owners${NC}"
        fi
    done

    # Now check individual AU plugins
    check_AU_plugins
}
#====1==== 🗑️ Run UAD Cleanup
function run_uad_cleanup() {
    while true; do
        trap 'echo; return' SIGINT
        resize_terminal 80 24
        clear
        check_permissions_status
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}1) 🗑️  Run UAD Cleanup${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "↩️  Main Menu" "Start Cleanup ↪️" "81"
        show_navigation_prompt_centered  # already padded

        echo "${GR}${BO}WARNING: ${GR}Cleanup will now run, moving any unused UAD plugins out of their${NC}"
        echo "${GR}plugin folders, into a new 'UAD_Backup' folder on the desktop.${NC}"
        echo
        read -rp "${BO}Are you sure you want to continue?${NC} [y/n]: " confirm
        handle_navigation_input "$confirm"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then 
            return 0
        elif handle_main_menu_AZ_navigation_input "$confirm" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        # Navigate to previous/next function
        case "$confirm" in
            y|Y)
                : ;;
            n|N)
                echo
                echo "❌ ${RE}Cleanup cancelled.${NC}"
                echo -n "   Returning to Main Menu "
                read -r -t 1 -n 1
                return 0
                ;;
            *)
                echo
                echo -n "❌ ${RE}Invalid choice.${NC} Please type y or n. "
                read -r -t 1 -n 1
                continue
                ;;
        esac

        while true; do
            trap - SIGINT
            interrupted=false
            set_terminal_height_to_2200p
            clear
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "${BO}1) 🗑️  Run UAD Cleanup${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "↩️  Cleanup [Confirmation]" "Main Menu ↪️" "81"
            show_navigation_prompt_centered  # already padded

            # track flag status from 'check_permissions_status' function
            if   [ "$no_write_flag" -eq 1 ]; then
                echo "🔄 ${GR}Attempting to move plugin files...${NC}"
                echo "   If prompted, please Enter password (or ^C to Exit)"
                echo
                # If sudo is successful
                if sudo -v 2>/dev/null; then
                    # keep it alive
                    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
                    keepalive_pid=$!
                    SUDO_PERMISSION="true"
                    echo
                else
                    echo -n "❌ ${RE}Failed to get sudo privileges.${NC} "
                    read -r -t 1 -n 1
                    continue 2 # return to confirmation
                fi
            fi

            trap 'echo; interrupted=true' SIGINT

            # Define parent directory for target folders
            parent_dir="$HOME/Desktop/UAD_Backup"

            # Define individual target directories
            vst_dir="$parent_dir/VST"
            vst_mono_dir="$parent_dir/VST_Mono"
            vst3_dir="$parent_dir/VST3"
            component_dir="$parent_dir/Component"
            aax_dir="$parent_dir/AAX"
            docs_dir="$parent_dir/Documentation"

            remove_backup_if_subdirs_empty() {
                local parent_dir="$1"
                
                if [ ! -d "$parent_dir" ]; then
                    return
                fi
                
                local all_empty=true
                
                # Check each subdirectory
                for subdir in "$vst_dir" "$vst_mono_dir" "$vst3_dir" "$component_dir" "$aax_dir" "$docs_dir"; do
                    if [[ "$interrupted" == "true" ]]; then
                        break
                    fi
                    if [ -d "$subdir" ]; then
                        # Count only non-hidden files - like .DS_Store
                        local file_count=$(find "$subdir" -mindepth 1 -maxdepth 1 ! -name ".*" | wc -l | tr -d ' ')
                        if [ "$file_count" -gt 0 ]; then
                            all_empty=false
                        fi
                    fi
                done
                
                if [[ "$all_empty" == "true" ]]; then
                    rm -rf "$parent_dir"
                fi
            }

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
            component_base="/Library/Audio/Plug-Ins/Components/"
            vst_base="/Library/Audio/Plug-Ins/VST/Universal Audio"
            vst3_base="/Library/Audio/Plug-Ins/VST3/Universal Audio"
            aax_base="/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/"
            docs_base="/Applications/Universal Audio/Documentation"

            # Counters for summary
            component_count=0
            aax_count=0
            vst_count=0
            vst_mono_count=0
            vst3_count=0
            docs_count=0
            total_count=0

            echo "🚮 ${BO}Removal status:${NC}"
            echo "${GR}═════════════════════════════${NC}"

            # Loop through each plugin name
            for uad_plugin in "${plugins[@]}"; do
                if [[ "$interrupted" == "true" ]]; then
                    break
                fi
                # Component path
                component_path="$component_base/${uad_plugin}.component"
                # AAX path
                aax_path="$aax_base/${uad_plugin}.aaxplugin"

                # === Component ===
                if [ -e "$component_path" ]; then
                    # Try normal move first
                    if mv "$component_path" "$component_dir/" 2>/dev/null; then 
                        echo "🗑️  ${GR}AU moved for:${NC} ${GY}${BO}...........${NC} ${GR}$uad_plugin${NC}"
                        ((component_count++))
                    # Try with sudo if owned by another user
                    elif sudo mv "$component_path" "$component_dir/"; then
                        echo "🗑️  ${GR}AU moved for:${NC} ${GY}${BO}...........${NC} ${GR}$uad_plugin${NC}"
                        ((component_count++))
                    fi
                fi

                # === AAX ===
                if [ -e "$aax_path" ]; then
                    # Try normal move first
                    if mv "$aax_path" "$aax_dir/" 2>/dev/null; then
                        echo "🗑️  ${GR}AAX moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                        ((aax_count++))
                    # Try with sudo if owned by another user
                    elif sudo mv "$aax_path" "$aax_dir/"; then
                        echo "🗑️  ${GR}AAX moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                        ((aax_count++))
                    fi
                fi
                
                # Loop through specified VST subfolders
                for subfolder in "${vst_subfolders[@]}"; do
                    if [[ "$interrupted" == "true" ]]; then
                        break 2
                    fi
                    # VST path in this subfolder
                    vst_path="$vst_base/$subfolder/${uad_plugin}.vst"
                    vst_path_m="$vst_base/$subfolder/${uad_plugin}(m).vst"

                    # VST3 path in this subfolder
                    vst3_path="$vst3_base/$subfolder/${uad_plugin}.vst3"

                    # Move VST if it exists
                    if [ -e "$vst_path" ]; then
                        # Try normal move first
                        if mv "$vst_path" "$vst_dir/" 2>/dev/null; then
                            echo "🗑️  ${GR}VST moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                            ((vst_count++))
                        elif sudo mv "$vst_path" "$vst_dir/"; then
                            echo "🗑️  ${GR}VST moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                            ((vst_count++))
                        fi
                    fi

                    # Move VST (m)  if it exists
                    if [ -e "$vst_path_m" ]; then
                        # Try normal move first
                        if mv "$vst_path_m" "$vst_mono_dir/" 2>/dev/null; then
                            echo "🗑️  ${GR}VST (m) moved for:${NC} ${GY}${BO}......${NC} ${GR}$uad_plugin${NC}"
                            ((vst_mono_count++))
                        # Try with sudo if owned by another user
                        elif sudo mv "$vst_path_m" "$vst_mono_dir/"; then
                            echo "🗑️  ${GR}VST (m) moved for:${NC} ${GY}${BO}......${NC} ${GR}$uad_plugin${NC}"
                            ((vst_mono_count++))
                        fi
                    fi

                    # Move VST3  if it exists
                    if [ -e "$vst3_path" ]; then
                        # Try normal move first
                        if mv "$vst3_path" "$vst3_dir/" 2>/dev/null; then
                            echo "🗑️  ${GR}VST3 moved for:${NC} ${GY}${BO}.........${NC} ${GR}$uad_plugin${NC}"
                            ((vst3_count++))
                        # Try with sudo if owned by another user
                        elif sudo mv "$vst3_path" "$vst3_dir/"; then
                            echo "🗑️  ${GR}VST3 moved for:${NC} ${GY}${BO}.........${NC} ${GR}$uad_plugin${NC}"
                            ((vst3_count++))
                        fi
                    fi
                done

                # Find matching PDF first
                doc_path=$(find "$docs_base" -type f -iname "*${uad_plugin#UAD }*.pdf" -print -quit)

                if [ -n "$doc_path" ]; then
                    # Try normal move first
                    if mv "$doc_path" "$docs_dir/" 2>/dev/null; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                        ((docs_count++))
                    # Try with sudo if owned by another user
                    elif sudo mv "$doc_path" "$docs_dir/"; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}$uad_plugin${NC}"
                        ((docs_count++))
                    fi
                fi

            done

            if [[ "$interrupted" == "true" ]]; then
                break
            fi

            # Move the MDWEQ5 Manual.pdf if either MDWEQ5 plugin is being removed
            # if [[ " ${plugins[@]} " =~ " UAD MDWEQ5-3B " ]] || [[ " ${plugins[@]} " =~ " UAD MDWEQ5-5B " ]]; then

            # Move the MDWEQ5 Manual.pdf if both MDWEQ5 plugins are being removed
            if [[ " ${plugins[@]} " =~ " UAD MDWEQ5-3B " ]] && [[ " ${plugins[@]} " =~ " UAD MDWEQ5-5B " ]]; then
                mdweq5_manual="$docs_base/MDWEQ5 Manual.pdf"
                if [ -e "$mdweq5_manual" ]; then
                    # Try normal move first
                    if mv "$mdweq5_manual" "$docs_dir/" 2>/dev/null; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}MDWEQ5 Manual${NC}"
                        ((docs_count++))
                    # Try with sudo if owned by another user
                    elif sudo mv "$mdweq5_manual" "$docs_dir/"; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}MDWEQ5 Manual${NC}"
                        ((docs_count++))
                    fi
                fi
            fi

            # Move the UAD Plug-Ins Manual.pdf file if it exists (and if any plugins were removed
            uad_manual="$docs_base/UAD Plug-Ins Manual.pdf"
            # check if any plugins got removed by checking docs_count
            if [[ $docs_count -gt 0 ]]; then
                if [ -e "$uad_manual" ]; then
                    # Try normal move first
                    if mv "$uad_manual" "$docs_dir/" 2>/dev/null; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}UAD Plug-Ins Manual${NC}"
                        ((docs_count++))
                    # Try with sudo if owned by another user
                    elif sudo mv "$uad_manual" "$docs_dir/"; then
                        echo "🗑️  ${GR}PDF moved for:${NC} ${GY}${BO}..........${NC} ${GR}UAD Plug-Ins Manual${NC}"
                        ((docs_count++))
                    fi
                fi
            fi

            break
        done

        if [[ "$interrupted" == "true" ]]; then
            echo
            echo "🛑 ${RE}Interrupted.${NC} Incomplete removal."
        fi

        trap - SIGINT
        interrupted=false
        trap 'echo; echo -n "🛑 ${RE}Interrupted.${NC} Press Enter to go back: "; continue' SIGINT

        total_count=$((component_count + aax_count + vst_count + vst_mono_count + vst3_count + docs_count))

        echo
        if [ $total_count -eq 0 ]; then
            echo "❌ ${GR}Nothing moved.${NC}"
            remove_backup_if_subdirs_empty "$parent_dir"
        else
            echo "✅ ${GR}Done!${NC}"
        fi
        
        echo
        echo "${GR}═════════════════════════════${NC}"
        echo "📊 ${BO}Cleanup Summary:${NC}"
        printf "   AUs:      %4d files moved\n" "$component_count"
        printf "   AAX:      %4d files moved\n" "$aax_count"
        printf "   VSTs:     %4d files moved\n" "$vst_count"
        printf "   VST Mono: %4d files moved\n" "$vst_mono_count"
        printf "   VST3s:    %4d files moved\n" "$vst3_count"
        printf "   PDFs:     %4d files moved\n" "$docs_count"
        printf "   ${BO}Total:    %4d files moved${NC}\n" "$total_count"    
        echo "${GR}═════════════════════════════${NC}"
        echo
        
        if [ $total_count -gt 0 ]; then
            echo "📝 ${BO}Next Steps:${BO}"
            echo "   ${GR}Check the${NC} ${BO}'UAD_Backup' ${GR}folder on your desktop to either backup or delete 🗑️${NC}"
            show_navigation_prompt_centered  # already padded
        fi

        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice)${NC}: " input

        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            continue # back to cleanup confirmation
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi
        return 0
    done    
}
#====2==== 🔍 Run UAD Cleanup [DRY RUN]
function run_uad_cleanup_dry_run() {
    while true; do    
        trap 'echo; return' SIGINT
        resize_terminal 80 24
        clear
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}2) 🔍 UAD Cleanup [DRY RUN]${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "79"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "↩️  Main Menu" "Start Dry Run ↪️" "81"
        show_navigation_prompt_centered  # already padded

        check_permissions_status

        echo "${BO}DRY RUN MODE ${GR}"
        echo
        echo "This will show what WOULD be moved without actually moving anything."
        echo "No files will be modified during this dry run.${NC}"
        echo
        read -rp "${GR}Press Enter to Continue (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        echo
        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            break
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        while true; do
            trap - SIGINT
            interrupted=false
            trap 'echo; interrupted=true' SIGINT
            set_terminal_height_to_2200p
            clear
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "${BO}2) 🔍 Running UAD Cleanup [DRY RUN]${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "79"
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "↩️  UAD Cleanup DRY RUN [Home]" "Main Menu ↪️" "81"
            show_navigation_prompt_centered  # already padded

            # Define parent directory for target folders
            parent_dir="$HOME/Desktop/UAD_Backup"

            # Define individual target directories
            vst_dir="$parent_dir/VST"
            vst_mono_dir="$parent_dir/VST_Mono"
            vst3_dir="$parent_dir/VST3"
            component_dir="$parent_dir/Component"
            aax_dir="$parent_dir/AAX"
            docs_dir="$parent_dir/Documentation"

            echo "📂 ${BO}Would create directories:${NC}"
            echo "${GR}══════════════════════════════════════════════════${NC}"
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
            component_base="/Library/Audio/Plug-Ins/Components/"
            vst_base="/Library/Audio/Plug-Ins/VST/Universal Audio"
            vst3_base="/Library/Audio/Plug-Ins/VST3/Universal Audio"
            aax_base="/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/"
            docs_base="/Applications/Universal Audio/Documentation"

            # Counters for summary
            component_count=0
            aax_count=0
            vst_count=0
            vst_mono_count=0
            vst3_count=0
            docs_count=0
            total_count=0

            echo "🔌 ${BO}Plugins:${NC}"
            echo "${GR}══════════════════════════════════════════════════${NC}"
            
            # Loop through each plugin name
            for uad_plugin in "${plugins[@]}"; do
                if [[ "$interrupted" == "true" ]]; then
                    break
                fi
                # Component path
                component_path="$component_base/${uad_plugin}.component"
                # AAX path
                aax_path="$aax_base/${uad_plugin}.aaxplugin"

                # === Component ===
                if [ -e "$component_path" ]; then
                    echo "🗑️  ${BL}Would move AU for:      $uad_plugin${NC}"
                    ((component_count++))
                fi

                # === AAX ===
                if [ -e "$aax_path" ]; then
                    echo "🗑️  ${BL}Would move AAX for:     $uad_plugin${NC}"
                    ((aax_count++))
                fi
                
                # Loop through specified VST subfolders
                for subfolder in "${vst_subfolders[@]}"; do
                    if [[ "$interrupted" == "true" ]]; then
                        break 2
                    fi

                    # VST path in this subfolder
                    vst_path="$vst_base/$subfolder/${uad_plugin}.vst"
                    vst_path_m="$vst_base/$subfolder/${uad_plugin}(m).vst"

                    # VST3 path in this subfolder
                    vst3_path="$vst3_base/$subfolder/${uad_plugin}.vst3"

                    # Check VST if it exists
                    if [ -e "$vst_path" ]; then
                        echo "🗑️  ${BL}Would move VST for:     $uad_plugin${NC}"
                        ((vst_count++))
                    fi

                    # Check VST (m) if it exists
                    if [ -e "$vst_path_m" ]; then
                        echo "🗑️  ${BL}Would move VST (m) for: $uad_plugin${NC}"
                        ((vst_mono_count++))
                    fi

                    # Check VST3 if it exists
                    if [ -e "$vst3_path" ]; then
                        echo "🗑️  ${BL}Would move VST3 for:    $uad_plugin${NC}"
                        ((vst3_count++))
                    fi
                done

                # Find matching PDF first
                doc_path=$(find "$docs_base" -type f -iname "*${uad_plugin#UAD }*.pdf" -print -quit)

                if [ -n "$doc_path" ]; then
                    echo "🗑️  ${BL}Would move PDF for:     $uad_plugin${NC}"
                    ((docs_count++))
                fi
            done

            if [[ "$interrupted" == "true" ]]; then
                break
            fi

            # Check the MDWEQ5 Manual.pdf if both MDWEQ5 plugins are selected
            if [[ " ${plugins[@]} " =~ " UAD MDWEQ5-3B " ]] && [[ " ${plugins[@]} " =~ " UAD MDWEQ5-5B " ]]; then
                mdweq5_manual="$docs_base/MDWEQ5 Manual.pdf"
                if [ -e "$mdweq5_manual" ]; then
                    echo "🗑️  ${BL}Would move PDF for:     MDWEQ5 Manual${NC}"
                    ((docs_count++))
                fi
            fi

            # Check for UAD Plug-Ins Manual.pdf
            uad_manual="$docs_base/UAD Plug-Ins Manual.pdf"
            if [[ $docs_count -gt 0 ]]; then
                if [ -e "$uad_manual" ]; then
                    echo "🗑️  ${BL}Would move PDF for:     UAD Plug-Ins Manual${NC}"
                    ((docs_count++))
                fi
            fi
            
            break
        done

        if [[ "$interrupted" == "true" ]]; then
            echo
            echo "🛑 ${RE}Interrupted.${NC} Incomplete scan."
        fi

        trap - SIGINT
        interrupted=false
        trap 'echo; echo -n "🛑 ${RE}Interrupted.${NC} Press Enter to go back: "; continue' SIGINT

        total_count=$((component_count + aax_count + vst_count + vst_mono_count + vst3_count + docs_count))
        
        if [ $total_count -eq 0 ]; then
            echo
            echo "❌ ${GR}Nothing would be moved.${NC}"
        fi

        echo
        echo "${GR}══════════════════════════════════════${NC}"
        echo "📊 ${BO}Cleanup Summary:${NC}"
        printf "   AUs:      %4d files would be moved\n" "$component_count"
        printf "   AAX:      %4d files would be moved\n" "$aax_count"
        printf "   VSTs:     %4d files would be moved\n" "$vst_count"
        printf "   VST Mono: %4d files would be moved\n" "$vst_mono_count"
        printf "   VST3s:    %4d files would be moved\n" "$vst3_count"
        printf "   PDFs:     %4d files would be moved\n" "$docs_count"
        printf "   ${BO}Total:    %4d files would be moved${NC}\n" "$total_count"    
        echo "${GR}══════════════════════════════════════${NC}"
        echo

        # track flag status from 'check_permissions_status' function
        if   [ "$no_write_flag" -eq 1 ]; then
            # Warn if current user isn't in sudoers.
            sudo_output=$(sudo -n -v 2>&1)
            if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                echo "---------------------------------------------------------------------------"
                echo "⚠️  ${GY}${BO}Warning: Your user account is not an admin. If you don't have permission"
                echo "   to some of these folders, you may not be able to move plugins.${NC}"
                echo "---------------------------------------------------------------------------"
                echo
            else
                echo "--------------------------------------------------------------------------"
                echo "⚠️  ${GY}${BO}Warning: It seems that you do not have permission to move some plugins."
                echo "   Running UAD Cleanup requires Admin privileges to make these changes."
                echo "   You will be prompted for your password if required.${NC}"
                echo "--------------------------------------------------------------------------"
                echo
            fi
        fi

        if [ $total_count -gt 0 ]; then
            echo "📝 ${BO}Next Steps:${BO}"
            echo "   ${GR}Choose${NC} ${BO}'1) 🗑️  Run UAD Cleanup'${GR} from the main menu when ready!${NC}"
            show_navigation_prompt_centered  # already padded
        fi
        
        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then 
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            continue
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi
        break

    done
}
#====3==== ⚙️ Show Preferences
function show_preferences() {
    while true; do
        trap 'echo; return' SIGINT
        resize_terminal 80 24
        clear
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}3) ⚙️  Show Preferences [Home]${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "↩️  Main Menu" "View Preferences ↪️" "81"
        show_navigation_prompt_centered  # already padded
        read -rp "➡️  ${GR}Press Enter to view preferences (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        handle_navigation_input "$input"
        nav=$?
        if [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            break
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        while true; do
            trap - SIGINT
            interrupted=false
            trap 'echo; interrupted=true' SIGINT
            set_terminal_height_to_2200p
            clear
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "${BO}3) ⚙️  Showing Preferences${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
            echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
            echo_justified "↩️  Show Preferences [Home]" "Main Menu ↪️" "81"
            show_navigation_prompt_centered  # already padded
            echo "${GR}Current Plugin Preferences:${NC}"
            echo
            
            # Count commented and uncommented plugins
            commented_count=0
            uncommented_count=0
            
            # Display all plugins in a single list with status indicators
            echo "${BO}KEY:${NC}"
            echo "${GR}══════════════════════════════════════════${NC}"
            echo "✅ = ${GR}Will be kept${NC}  |  ❌ = ${RE}Will be removed${NC}"
            echo "${GR}══════════════════════════════════════════${NC}"
            echo
            echo "🔌 ${BO}Plugins:${NC}"
            echo "${GR}------------------------------------------${NC}"

            # Read the current script to extract both commented and uncommented plugins
            in_plugins_section=false
            while IFS= read -r line; do
                if [[ "$interrupted" == "true" ]]; then
                    break
                fi
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
                            uad_plugin_name=$(echo "$line" | sed 's/^[[:space:]]*#[[:space:]]*"\([^"]*\)".*/\1/')
                            echo "✅ $uad_plugin_name"
                            ((commented_count++))
                        else
                            # Uncommented plugin (will be removed)
                            uad_plugin_name=$(echo "$line" | sed 's/^[[:space:]]*"\([^"]*\)".*/\1/')
                            echo "❌ $uad_plugin_name"
                            ((uncommented_count++))
                        fi
                    fi
                fi
            done < "$0"

            break
        done

        if [[ "$interrupted" == "true" ]]; then
            echo
            echo "🛑 ${RE}Interrupted.${NC} Incomplete scan."
        fi

        trap - SIGINT
        interrupted=false
        trap 'echo; echo -n "🛑 ${RE}Interrupted.${NC} Press Enter to go back: "; interrupted=true; continue' SIGINT

        echo
        echo "${BO}KEY:${NC}"
        echo "${GR}══════════════════════════════════════════${NC}"
        echo "✅ = ${GR}Will be kept${NC}  |  ❌ = ${RE}Will be removed${NC}"
        echo "${GR}══════════════════════════════════════════${NC}"
        echo "📊 ${BO}Summary:${NC}"
        printf "   ${GR}Active plugins:   %3d${NC} (will be kept)\n" $((commented_count))
        printf "   ${RE}Inactive plugins: %3d${NC} (will be removed)\n" $((uncommented_count))
        printf "   ${BO}Total plugins:    %3d${NC}\n" $((commented_count + uncommented_count))
        echo "${GR}══════════════════════════════════════════${NC}"
        echo
        echo "📝 ${BO}Next Steps:${BO}"
        echo "   ${GR}Run${NC} ${BO}'2) 🔍 Run UAD Cleanup [DRY RUN]'${GR} or choose${NC} ${BO}'1) 🗑️  Run UAD Cleanup'${GR} from"
        echo "   the main menu when ready!${NC}"
        show_navigation_prompt_centered  # already padded

        read -rp "➡️  ${GR}Return to Main Menu? Press Enter (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        
        handle_navigation_input "$input"
        nav=$?
        if [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            continue
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi
        return 0
    done
}
#====4==== ↪️ Import Preferences
function import_preferences() {
    while true; do
        trap 'echo; return' SIGINT
        resize_terminal 80 24
        clear

        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}4) ↪️  Import Preferences${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "↩️  Main Menu" "Import Preferences ↪️" "81"
        show_navigation_prompt_centered  # already padded
        echo "- This option will import your plugin preferences from an older version of"
        echo "  UAD Plugins Tool, and apply them to this new one."
        echo "- A backup will also be saved in the same location as this current script."
        echo
        echo "${GR}Please provide your OLD 'UAD_Plugins_Tool.command' file.${NC}"
        echo
        echo "${BO}Path Picker Options:${NC} ${BO}${GY}(or use drag & drop)${NC}"
        echo " 1) 📂 ${GR}Reveal Finder${NC} ${BO}${GY}(for Drag & Drop)${NC}"
        echo " 2) 📄 ${GR}Choose file  ${NC} ${BO}${GY}(via Finder dialog)${NC}"
        echo
        echo "⬇️  ${GR}Drag & drop it onto this window, then press Enter.${NC}"
        echo "   ${BO}${GY}Tip: You can also press ⌥⌘C to copy it as a pathname${NC}"
        echo
        read -r old_script_input
        handle_navigation_input "$old_script_input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then 
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            return 0
        elif handle_main_menu_AZ_navigation_input "$old_script_input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        # Handle Path Picker Options
        local paths_to_process=()

        case "$old_script_input" in
            1) open /System/Library/CoreServices/Finder.app; continue ;;
            2)
                # Open Finder open panel (for files)
                local selected_path=$(osascript \
                    -e 'try' \
                    -e 'set theFile to choose file with prompt "Choose your old UAD_Plugins_Tool.command file" of type {"command", "public.unix-executable"}' \
                    -e 'return POSIX path of theFile' \
                    -e 'on error' \
                    -e 'return ""' \
                    -e 'end try')
                if [[ -n "$selected_path" ]]; then
                    selected_path="${selected_path%/}"
                    paths_to_process=("$selected_path")
                else
                    echo "❌ ${RE}No selection made.${NC}"
                    echo -n "   Please try again. "
                    read -r -t 1 -n 1
                    continue
                fi
                ;;
            *)
                # Process drag & drop input to handle escaped spaces and quoted paths
                eval "set -- $old_script_input"

                local arg_count=$#

                if [[ "$arg_count" -eq 0 ]]; then
                    echo "❌ ${RE}No paths provided.${NC}"
                    echo -n "   Please try again. "
                    read -r -t 1 -n 1
                    continue
                fi

                if [[ "$arg_count" -gt 1 ]]; then
                    echo "❌ ${RE}Only one file can be provided.${NC}"
                    echo -n "   Please try again. "
                    read -r -t 1 -n 1
                    continue
                fi

                if [[ ! -e "$1" ]]; then
                    echo "❌ ${RE}File not found.${NC}"
                    echo -n "   Please try again. "
                    read -r -t 1 -n 1
                    continue
                fi

                paths_to_process=("$1")
                ;;
        esac

        old_script="${paths_to_process[0]}"

        # Validate the file is a UAD Plugins Tool script
        if ! grep -q "plugins=(" "$old_script" 2>/dev/null || \
           ! grep -q "UAD_Plugins_Tool" "$old_script" 2>/dev/null || \
           ! grep -q "bash" "$old_script" 2>/dev/null ; then
            echo
            echo "❌ ${RE}Invalid file.${NC}"
            echo -n "Please provide a valid UAD_Plugins_Tool.command file. "
            read -r -t 2 -n 1
            continue
        fi

        trap - SIGINT
        clear
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}4) ↪️  Importing Preferences${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "81"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "↩️  Import Preferences [Home]" "Main Menu ↪️" "81"
        show_navigation_prompt_centered  # already padded
        echo "✅ ${GR}${BO}Old script found:${NC}" 
        echo "${old_script}"
        echo
        echo "${GR}🔄 Running...${NC}"
        echo

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
        
        echo "${BL}→ Extracting plugin preferences from old script...${NC}"

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

        echo "${BL}→ Updating this script with your preferences...${NC}"

        # Create a backup of the current script
        script_basename="${0%.command}"
        cp "$0" "${script_basename}_backup.command"
        
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
            echo -n "❌ ${RE}Error: Failed to update script. Cleaning up temporary files...${NC} "
            cleanup_temp_files
            read -r -t 1 -n 1
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
            total_new_plugins=$(grep -c '.' "$new_plugins_file" 2>/dev/null || echo "0")
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
        # new_plugins_added=$((total_new_plugins - preserved_uncommented - preserved_commented))
        new_plugins_added=0
        while IFS= read -r plugin_name; do
            if ! grep -q "^${plugin_name}:" "$old_prefs_file" 2>/dev/null; then
                ((new_plugins_added++))
            fi
        done < "$new_plugins_file"

        # Clean up temporary files
        cleanup_temp_files
        
        interrupted=false
        trap 'echo; echo -n "🚪 ${GR}Returning to Main Menu... ${GR}"; sleep 1; exec "$0";' SIGINT

        echo
        echo "✅ ${GR}Preferences imported!${NC}"
        echo
        echo "❌ Plugins set for removal: ${RE}$preserved_uncommented${NC}"
        echo "✅ Plugins to keep: ${BO}${GY}...... ${NC} ${GR}$preserved_commented${NC}"
        echo "🆕 New plugin titles added: ${MA}$new_plugins_added${NC}"
        echo "🔌 Total UAD plugins: ${BO}${GY}.....${NC} ${BO}$total_new_plugins${NC}"
        echo
        read -rp "➡️  ${GR}Press any key to return to the Main Menu${NC} "
        
        # Restart the script with the updated version
        exec "$0"
    done
}
#====5==== 🔧 Check/Fix Permissions
function check_or_fix_permissions() {
    CURRENT_USER=$(whoami)
    uid=$(id -u)
    ADMIN_STATUS=$(if id -Gn | grep -q '\badmin\b'; then echo "✅"; else echo "❌"; fi)
    ACL_PERMISSIONS="$CURRENT_USER allow read,write,delete,add_file,add_subdirectory,file_inherit,directory_inherit"

    while true; do
        trap 'echo; return' SIGINT
        resize_terminal 82 30
        clear
        echo "${GR}═══════════════════════════${GR}╗${NC} 👤 ${BO}Current User:${NC} ${GR}$CURRENT_USER${NC}"
        echo "${BO}5) 🔧 Check/Fix Permissions${GR}║${NC} 🪪 ${BO}Current UID: ${NC} ${GR}$uid${NC}"
        echo "${GR}═══════════════════════════${GR}╝${NC} 🔑 ${BO}Admin Status: ${GR}$ADMIN_STATUS${NC}        ${BO}${GY}(Use A/Z to cycle options)${NC}"
        echo_justified "↩️  Main Menu" "Fix Permissions ↪️" "83"
        show_navigation_prompt_centered  # already padded

        echo "${BO}Permission status:${NC}"
        echo "${GR}----------------------------------------------------------------------------------${NC}"
        list_permission_status
        echo "${GR}----------------------------------------------------------------------------------${NC}"

        if [ "$no_write_flag" -eq 0 ]; then
            echo "✅ ${GR}You have proper permissions!${NC}"
        elif [ "$no_write_flag" -gt 0 ]; then
            sudo_output=$(sudo -n -v 2>&1)
            if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                echo "💡 ${GY}${BO}Note: Your user account is not an admin. If you don't have permission to some"
                echo "   of these folders, you may not be able to fix permissions or move plugins.${NC}"
                echo
                echo "🔧 ${GR}Continue anyway?${NC}"
            else
                echo "💡 ${GY}${BO}Note: If you don't have permission to some of these folders, there may be no"
                echo "   need to fix permissions as you will be asked for your password during the"
                echo "   UAD Cleanup if required. Moving plugins, however, may take slightly longer.${NC}"
                echo
                echo "🔧 ${GR}Fix permissions?${NC}"
            fi
        fi  

        echo
        read -rp "➡️  ${GR}Press Enter to see more options (or ${BL}navigation${NC} ${GR}choice)${NC}: " input
        handle_navigation_input "$input"
        nav=$?
        if   [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            break
        elif handle_main_menu_AZ_navigation_input "$input" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        set_terminal_height_to_2200p

        while true; do
            clear
            echo "${GR}══════════════════${GR}╗${NC} 👤 ${BO}Current User:${NC} ${GR}$CURRENT_USER${NC}"
            echo "${BO}🔧 Fix Permissions${GR}║${NC} 🪪 ${BO}Current UID: ${NC} ${GR}$uid${NC}"
            echo "${GR}══════════════════${GR}╝${NC} 🔑 ${BO}Admin Status: ${GR}$ADMIN_STATUS${NC}                 ${BO}${GY}(Use A/Z to cycle options)${NC}"
            echo "↩️  Check/Fix Permissions [Home]"
            show_navigation_prompt_centered  # already padded
            echo "${GR}This tool fixes certain cases where your user account may not have the proper"
            echo "permissions to move the UAD plugins.${NC} ${GY}${BO}(This is typically not an issue if you"
            echo "just ran the UAD Software installer or if this is your only macOS user account).${NC}${GR}"
            echo "For other cases, you may want to fix or set additional permissions."
            echo "${NC}"
            echo "${BO}Select an option: ${GY}(applies only to the directories listed below)${NC}"
            echo " 1) 👤 ${GR}Add${NC} ${BO}$CURRENT_USER${NC} ${GR}as the sole owner${NC} (recommended)"
            echo " 2) 👥 ${GR}Add${NC} ${BO}$CURRENT_USER${NC} ${GR}as an additional owner${NC} (for secondary users)"
            echo " 3) 👥 ${RE}Remove${NC} ${BO}$CURRENT_USER${NC} ${GR}as an additional owner${NC}"
            echo " 4) 👤 ${GR}Custom user as the sole owner${NC} (enter another user manually)"
            echo
            echo "💡 ${GY}${BO}Note: Option 1 follows UAD's official installer method.${NC}"
            echo
            echo "${BO}Permission status: ${GY}${BO}(Refreshes automatically)${NC}"
            echo "${GR}----------------------------------------------------------------------------------${NC}"
            list_permission_status
            echo "${GR}----------------------------------------------------------------------------------${NC}"
            echo
            read -rp "➡️  ${GR}Select option [1-4] (or ${BL}navigation${NC} ${GR}choice)${NC}: " choice
            handle_navigation_input "$choice"
            nav=$?
            if   [[ $nav -eq $NAV_QUIT ]]; then
                return 0
            elif [[ $nav -eq $NAV_BACK ]]; then
                break
            elif handle_main_menu_AZ_navigation_input "$choice" "$main_menu_choice"; then  # Navigate to previous/next function
                return
            fi

            case "$choice" in
                1)
                    while true; do                       
                        # sudo checks
                        while true; do
                            # If user isn't in sudoers, abort.
                            sudo_output=$(sudo -n -v 2>&1)
                            if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            # Ensure current user has administrator privileges - redundant check
                            elif ! id -Gn | grep -q "\badmin\b"; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            fi

                            # Don't show again while privileges are elevated
                            if [[ -z "$SUDO_PERMISSION" ]]; then
                                echo
                                echo "⚠️  ${GY}${BO}This operation requires elevated privileges to set permissions."
                                echo "   If prompted, please Enter password (or ^C to Exit)${NC}"
                                echo
                            fi

                            # trap - SIGINT

                            # If sudo is successful
                            if sudo -v 2>/dev/null; then
                                # keep it alive
                                while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
                                keepalive_pid=$!
                                SUDO_PERMISSION="true"
                                echo
                                break
                            else
                                echo "❌ ${RE}Failed to get sudo privileges.${NC}"
                                echo -n "🚪 Returning to previous step... "
                                read -r -t 2 -n 1
                                continue 3 # return to previous step
                            fi
                        done

                        echo "👤 ${GR}Adding${NC} ${BO}$CURRENT_USER${NC} ${GR}as the sole owner.${NC} "

                        CHOWN_OWNER="$CURRENT_USER:staff"

                        # Function to check if path is writable and set owner if needed
                        set_owner() {
                            local path="$1"
                            local recursive="$2"

                            if [ -e "$path" ]; then
                                if [ "$recursive" = "-R" ]; then
                                    sudo chown -R "$CHOWN_OWNER" "$path" 2>/dev/null
                                    sudo chmod -R 755 "$path" 2>/dev/null
                                else
                                    sudo chown "$CHOWN_OWNER" "$path" 2>/dev/null
                                    sudo chmod 755 "$path" 2>/dev/null
                                fi
                            fi
                        }

                        # Check VST directory
                        set_owner "/Library/Audio/Plug-Ins/VST/Universal Audio" "-R"
                        # Check VST3 directory
                        set_owner "/Library/Audio/Plug-Ins/VST3/Universal Audio" "-R"
                        # Check Components directory
                        set_owner "/Library/Audio/Plug-Ins/Components/" ""
                        # Check UAD component files
                        if ls "/Library/Audio/Plug-Ins/Components/UAD "*.component >/dev/null 2>&1; then
                            for component in "/Library/Audio/Plug-Ins/Components/UAD "*.component; do
                                set_owner "$component" "-R"
                            done
                        fi
                        # Check Console Recall component
                        set_owner "/Library/Audio/Plug-Ins/Components/Console Recall.component" "-R"
                        # Check Digidesign directory
                        set_owner "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio/" "-R"
                        # Check Avid directory
                        set_owner "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/" "-R"
                        # Check Applications directory
                        # set_owner "/Applications/Universal Audio" ""
                        # Check Documentation directory
                        set_owner "/Applications/Universal Audio/Documentation" "-R"
                        
                        echo "${GR}✅ Done!${NC}"
                        echo -n "🔄 ${BO}Refreshing results...${BO} "
                        read -r -t 1 -n 1
                        continue 2
                    done
                    ;;
                2) 
                    while true; do
                        # sudo checks
                        while true; do
                            # If user isn't in sudoers, abort.
                            sudo_output=$(sudo -n -v 2>&1)
                            if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            # Ensure current user has administrator privileges - redundant check
                            elif ! id -Gn | grep -q "\badmin\b"; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            fi

                            # Don't show again while privileges are elevated
                            if [[ -z "$SUDO_PERMISSION" ]]; then
                                echo
                                echo "⚠️  ${GY}${BO}This operation requires elevated privileges to set permissions."
                                echo "   If prompted, please Enter password (or ^C to Exit)${NC}"
                                echo
                            fi

                            # trap - SIGINT

                            # If sudo is successful
                            if sudo -v 2>/dev/null; then
                                # keep it alive
                                while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
                                keepalive_pid=$!
                                SUDO_PERMISSION="true"
                                echo
                                break
                            else
                                echo "❌ ${RE}Failed to get sudo privileges.${NC}"
                                echo -n "🚪 Returning to previous step... "
                                read -r -t 2 -n 1
                                continue 3 # return to previous step
                            fi
                        done
                        
                        echo "👥 ${GR}Adding${NC} ${BO}$CURRENT_USER${NC} ${GR}as an additional owner.${NC}" 

                        # Function to add ACLs rather than change original owner of UAD plugin folders
                        set_acls() {
                            local path="$1"
                            local recursive="$2"
                            
                            if [ -e "$path" ]; then
                                if [ "$recursive" = "-R" ]; then
                                    sudo chmod -R +a "$ACL_PERMISSIONS" "$path" 2>/dev/null
                                else
                                    sudo chmod +a "$ACL_PERMISSIONS" "$path" 2>/dev/null
                                fi
                            fi
                        }

                        # Apply permissions to directories and files
                        set_acls "/Library/Audio/Plug-Ins/VST/Universal Audio" "-R"
                        set_acls "/Library/Audio/Plug-Ins/VST3/Universal Audio" "-R"
                        set_acls "/Library/Audio/Plug-Ins/Components/" ""
                        set_acls "/Library/Audio/Plug-Ins/Components/Console Recall.component" "-R"
                        set_acls "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio/" "-R"
                        set_acls "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/" "-R"
                        # set_acls "/Applications/Universal Audio" ""
                        set_acls "/Applications/Universal Audio/Documentation" "-R"

                        # Check individual UAD component files
                        if ls "/Library/Audio/Plug-Ins/Components/UAD "*.component >/dev/null 2>&1; then
                            for component in "/Library/Audio/Plug-Ins/Components/UAD "*.component; do
                                set_acls "$component" "-R"
                            done
                        fi
                        
                        echo "${GR}✅ Done!${NC}"
                        echo -n "🔄 ${BO}Refreshing results...${BO} "
                        read -r -t 1 -n 1
                        continue 2
                    done
                    ;;
                3) 
                    while true; do
                        # sudo checks
                        while true; do
                            # If user isn't in sudoers, abort.
                            sudo_output=$(sudo -n -v 2>&1)
                            if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            # Ensure current user has administrator privileges - redundant check
                            elif ! id -Gn | grep -q "\badmin\b"; then
                                echo
                                echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                                echo "   Please try again once you're an admin."
                                read -r -t 3 -n 1
                                continue 3 # return to previous step
                            fi

                            # Don't show again while privileges are elevated
                            if [[ -z "$SUDO_PERMISSION" ]]; then
                                echo
                                echo "⚠️  ${GY}${BO}This operation requires elevated privileges to set permissions."
                                echo "   If prompted, please Enter password (or ^C to Exit)${NC}"
                                echo
                            fi

                            # trap - SIGINT

                            # If sudo is successful
                            if sudo -v 2>/dev/null; then
                                # keep it alive
                                while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
                                keepalive_pid=$!
                                SUDO_PERMISSION="true"
                                echo
                                break
                            else
                                echo "❌ ${RE}Failed to get sudo privileges.${NC}"
                                echo -n "🚪 Returning to previous step... "
                                read -r -t 2 -n 1
                                continue 3 # return to previous step
                            fi
                        done
                        
                        echo "👥 ${GR}Removing${NC} ${BO}$CURRENT_USER${NC} ${GR}as an additional owner.${NC}" 

                        # Function to remove current user ACLs
                        remove_acls() {
                            local path="$1"
                            local recursive="$2"
                            
                            if [ -e "$path" ]; then
                                if [ "$recursive" = "-R" ]; then
                                    sudo chmod -R -a "$ACL_PERMISSIONS" "$path" 2>/dev/null
                                else
                                    sudo chmod -a "$ACL_PERMISSIONS" "$path" 2>/dev/null
                                fi
                            fi
                        }

                        # Apply permissions to directories and files
                        remove_acls "/Library/Audio/Plug-Ins/VST/Universal Audio" "-R"
                        remove_acls "/Library/Audio/Plug-Ins/VST3/Universal Audio" "-R"
                        remove_acls "/Library/Audio/Plug-Ins/Components/" ""
                        remove_acls "/Library/Audio/Plug-Ins/Components/Console Recall.component" "-R"
                        remove_acls "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio/" "-R"
                        remove_acls "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/" "-R"
                        # remove_acls "/Applications/Universal Audio" ""
                        remove_acls "/Applications/Universal Audio/Documentation" "-R"

                        # Check individual UAD component files
                        if ls "/Library/Audio/Plug-Ins/Components/UAD "*.component >/dev/null 2>&1; then
                            for component in "/Library/Audio/Plug-Ins/Components/UAD "*.component; do
                                remove_acls "$component" "-R"
                            done
                        fi
                        
                        echo "${GR}✅ Done!${NC}"
                        echo -n "🔄 ${BO}Refreshing results...${BO} "
                        read -r -t 1 -n 1
                        continue 2
                    done
                    ;;
                4)                      
                    # If user isn't in sudoers, abort.
                    sudo_output=$(sudo -n -v 2>&1)
                    if echo "$sudo_output" | grep -qiE 'may not run sudo|not in the sudoers'; then
                        echo
                        echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                        echo "   Please try again once you're an admin."
                        read -r -t 3 -n 1
                        continue # return to previous step
                    # Ensure current user has administrator privileges - redundant check
                    elif ! id -Gn | grep -q "\badmin\b"; then
                        echo
                        echo "🛑 ${RE}This action requires an Administrator account.${NC}"
                        echo "   Please try again once you're an admin."
                        read -r -t 3 -n 1
                        continue # return to previous step
                    fi

                    while true; do
                        echo
                        read -p "${GR}Enter the custom username to set as owner:${NC} " custom_user
                        handle_navigation_input "$custom_user"
                        nav=$?
                        if   [[ $nav -eq $NAV_QUIT ]]; then
                            return 0
                        elif [[ $nav -eq $NAV_BACK ]]; then 
                            continue 2
                        elif handle_main_menu_AZ_navigation_input "$custom_user" "$main_menu_choice"; then  # Navigate to previous/next function
                            return
                        fi

                        # Check if user pressed Enter without input (cancel)
                        if [ -z "$custom_user" ]; then
                            echo
                            echo -n "🛑 ${RE}Cancelled.${NC} "
                            read -r -t 1 -n 1
                            continue 2
                        fi

                        # Validate that the user exists on the system
                        if ! id "$custom_user" >/dev/null 2>&1; then
                            echo
                            echo "❌ ${RE}Error: User${NC} ${BO}'$custom_user'${NC} ${RE}does not exist on this system.${NC}"
                            echo -n "   Please try again. "
                            read -r -t 2 -n 1
                            continue 2
                        fi

                        while true; do
                            # Confirm the action
                            read -p "${GR}Set${NC} ${BO}'$custom_user'${BO} ${GR}as sole owner? (y/N):${NC} " confirm
                            handle_navigation_input "$confirm"
                            nav=$?
                            if   [[ $nav -eq $NAV_QUIT ]]; then
                                return 0
                            elif [[ $nav -eq $NAV_BACK ]]; then 
                                continue 3
                            elif handle_main_menu_AZ_navigation_input "$confirm" "$main_menu_choice"; then  # Navigate to previous/next function
                                return
                            fi

                            case "$confirm" in
                                [Yy]|[Yy][Ee][Ss])
                                    CUSTOM_CHOWN_OWNER="$custom_user:staff"
                                    ;;
                                *)
                                    echo
                                    echo -n "🛑 ${RE}Cancelled.${NC} "
                                    read -r -t 1 -n 1
                                    continue 3
                                    ;;
                            esac

                            # sudo checks
                            while true; do
                                # Don't show again while privileges are elevated
                                if [[ -z "$SUDO_PERMISSION" ]]; then
                                    echo
                                    echo "⚠️  ${GY}${BO}This operation requires elevated privileges to set permissions."
                                    echo "   If prompted, please Enter password (or ^C to Exit)${NC}"
                                    echo
                                fi

                                # trap - SIGINT

                                # If sudo is successful
                                if sudo -v 2>/dev/null; then
                                    # keep it alive
                                    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
                                    keepalive_pid=$!
                                    SUDO_PERMISSION="true"
                                    echo
                                    break
                                else
                                    echo "❌ ${RE}Failed to get sudo privileges.${NC}"
                                    echo -n "   Returning to previous step... "
                                    read -r -t 2 -n 1
                                    continue 4 # return to previous step
                                fi
                            done

                            echo "👤 ${GR}Adding${NC} ${BO}$custom_user${NC} ${GR}as the sole owner.${NC}"

                            # Function to set custom owner
                            set_custom_owner() {
                                local path="$1"
                                local recursive="$2"

                                if [ -e "$path" ]; then
                                    if [ "$recursive" = "-R" ]; then
                                        sudo chown -R "$CUSTOM_CHOWN_OWNER" "$path" 2>/dev/null
                                        sudo chmod -R 755 "$path" 2>/dev/null
                                    else
                                        sudo chown "$CUSTOM_CHOWN_OWNER" "$path" 2>/dev/null
                                        sudo chmod 755 "$path" 2>/dev/null
                                    fi
                                fi
                            }

                            # Check VST directory
                            set_custom_owner "/Library/Audio/Plug-Ins/VST/Universal Audio" "-R"
                            # Check VST3 directory
                            set_custom_owner "/Library/Audio/Plug-Ins/VST3/Universal Audio" "-R"
                            # Check Components directory
                            set_custom_owner "/Library/Audio/Plug-Ins/Components/" ""
                            # Check UAD component files
                            # echo "[$(date)] 🔍 Checking for UAD *.component files..." >> "$log_file"
                            if ls "/Library/Audio/Plug-Ins/Components/UAD "*.component >/dev/null 2>&1; then
                                for component in "/Library/Audio/Plug-Ins/Components/UAD "*.component; do
                                    set_custom_owner "$component" "-R"
                                done
                            fi
                            # Check Console Recall component
                            set_custom_owner "/Library/Audio/Plug-Ins/Components/Console Recall.component" "-R"
                            # Check Digidesign directory
                            set_custom_owner "/Library/Application Support/Digidesign/Plug-Ins/Universal Audio/" "-R"
                            # Check Avid directory
                            set_custom_owner "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio/" "-R"
                            # Check Applications directory
                            # set_custom_owner "/Applications/Universal Audio" ""
                            # Check Documentation directory
                            set_custom_owner "/Applications/Universal Audio/Documentation" "-R"a
                            
                            echo "${GR}✅ Done!${NC}"
                            echo -n "🔄 ${BO}Refreshing results...${BO} "
                            read -r -t 1 -n 1
                            continue 3
                        done
                    done
                    ;;
                *)
                    echo
                    echo -n "❌ ${RE}Invalid choice.${NC} Please choose [1-4] "
                    read -r -t 1 -n 1
                    continue
                    ;;
            esac
        done
    done
}
#====6==== 📚 Resources
function resources() {
    while true; do  
        trap 'echo; return' SIGINT
        clear
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo_justified "${BO}6) 📚 Resources${NC}" "${BO}${GY}(use A/Z to cycle options)${NC}" "79"
        echo "${GR}════════════════════════════════════════════════════════════════════════════════${NC}"
        echo "↩️  Main Menu"
        show_navigation_prompt_centered  # already padded
        echo "🔗 ${BO}Links:${NC}"
        echo " 1) ${GR}Download the latest UAD Software installer${NC} ${BO}${GY}(UAD_11_8_3_321.pkg)${NC}"
        echo " 2) ${GR}Download previous UAD Software versions${NC}"
        echo " 3) ${GR}Check UAD Release Notes${NC}"
        echo " 4) ${GR}Uninstall UAD Software${NC}"
        echo " 5) ${GR}Check for UAD Plugins Tool Updates${NC}"
        echo " 6) ${GR}View the UAD Plugins Tool ChangeLog${NC}"
        echo
        read -rp "➡️  ${GR}Select an option (or ${BL}navigation${NC} ${GR}choice)${NC}: " choice
        
        handle_navigation_input "$choice"
        nav=$?
        if [[ $nav -eq $NAV_QUIT ]]; then
            return 0
        elif [[ $nav -eq $NAV_BACK ]]; then
            break
        elif handle_main_menu_AZ_navigation_input "$choice" "$main_menu_choice"; then  # Navigate to previous/next function
            return
        fi

        case $choice in
            1)
                # Download the latest UAD Software
                open https://builds.uaudio.com/apps/uad2/UAD_11_8_3_321.pkg
                ;;
            2) 
                # Download previous UAD Software versions
                open https://help.uaudio.com/hc/en-us/articles/215267203-UAD-Software-Archives#h_01H9V0DA4FN4W1HE84V40V3WJ7
                ;;
            3)
                # Check UAD Release Notes
                open https://help.uaudio.com/hc/en-us/articles/215270403-UAD-Version-History-Release-Notes
                ;;
            4)
                # Uninstall UAD Software
                if [[ -d "/Applications/Universal Audio/Uninstall Universal Audio Software.app" ]]; then
                    open "/Applications/Universal Audio/Uninstall Universal Audio Software.app"
                else
                    echo
                    echo -n "❌ ${RE}Uninstaller not found.${NC} "
                    read -r -t 1 -n 1
                fi
                ;;
            5)
                # Check for UAD Plugins Tool Updates
                open https://shop.ryansummer.com/p/uad-plugins-tool/
                ;;
            6)
                # Open UAD Plugins Tool ChangeLog
                open https://shop.ryansummer.com/uad-plugins-tool-changelog/
                ;;
            *)
                echo
                echo -n "❌ ${RE}Invalid choice.${NC} Please choose [1-6] "
                read -r -t 1 -n 1
                ;;
        esac
    done
}
# Script entry point
main_menu
# Intentionally left blank
