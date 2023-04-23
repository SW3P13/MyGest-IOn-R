#!/bin/bash

function estUneIP () {
	ipnbdot=$(echo -n $1|grep -o "\."|wc -l)
	if (( $ipnbdot == 3 )); then
	compteur=0
	for((i=1;i<5;i++))
	do
		octet=$(echo $1|cut -d. -f$i)
		if (( $octet >= 0 && $octet <=255 )); then
			compteur=$compteur+1
		fi
	done
	if (( $compteur == 4 )); then
		return 0
	else
		return 1
	fi
	else	return 1
	fi
}
