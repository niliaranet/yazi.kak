define-command yazi-root %{
    edit %sh{
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

define-command yazi %{
    edit %sh{
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
