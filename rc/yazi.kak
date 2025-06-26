# yazi and yazi-root are nearly identical,
# but i don't know if mergeing them together
# would make it worse. Criticism is welcome

define-command -docstring \
"Open Yazi in your kakoune's root directory" \
yazi-root %{
    edit %sh{
        # This script clears contents inside $output,
        # opens yazi and saves the path to the file picked to $output.
        # If no file is selected, it edits the buffer's path,
        # otherwise it edits the selected file.
        output=/tmp/kak-yazi
        rm -f $output

        $kak_opt_termcmd "yazi --chooser-file $output"

        if [ -s "$output" ]; then
            cat "$output"
        else
            echo $kak_buffile
        fi
    }
}

define-command -docstring \
"Open Yazi in your current buffer's directory" \
yazi %{
    edit %sh{
        # This script clears contents inside $output,
        # opens yazi in the current buffer's path
        # and saves the path to the file picked to $output.
        # If no file is selected, it edits the buffer's path,
        # otherwise it edits the selected file.
        output=/tmp/kak-yazi
        rm -f $output

        cd "$(dirname "$kak_buffile")"
        $kak_opt_termcmd "yazi --chooser-file $output"

        if [ -s "$output" ]; then
            cat "$output"
        else
            echo $kak_buffile
        fi
    }
}
