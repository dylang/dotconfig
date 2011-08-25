function prompt_command() {
	case $TERM in
	    xterm*)
	        local TITLEBAR='\[\033]0;\W\007\]'
	        ;;
	    *)
	        local TITLEBAR=''
	        ;;
	esac

    PS1="${TITLEBAR}${blue}$(scm_prompt_info)\] ${white}\w${reset_color}${white} \$ ${reset_color}";
}

PROMPT_COMMAND=prompt_command;