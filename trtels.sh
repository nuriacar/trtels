#!/bin/bash

###############################################################################
###############################################################################

function _prnt_seperator {
    for i in {1..79}
    do
        printf "=" # Seperator Printer
    done
    
    printf "\n"
}

###############################################################################

function _get_time {

    SECONDS=0 # Gets time now (start time) for elapsed time calculation.
}

###############################################################################

function _calc_elapsed_time {

    local _duration=$SECONDS # Gets duration time from SECONDS=0 till now.
    
    local _hours=$(($_duration / 3600))
    local _minutes=$(( ( $_duration / 60 ) % 60 ))
    local _seconds=$(($_duration % 60))
    
    _prnt_seperator

    if [ "$_hours" -gt 0 ]; then
       printf "Done! ====> $_hours h. $_minutes m. $_seconds s.\n"
    elif [ "$_minutes" -gt 0 ]; then
       printf "Done! ====> $_minutes m. $_seconds s.\n"
    else
       printf "Done! ====> $_seconds s.\n"
    fi

    _prnt_seperator
}

###############################################################################

function _header {
    
    # WIP Logs :
    # =========================================================================
    # 20190417       :        : Start
    # 201904172953   : v0.0.1 : Done.
    # 20200419034417 : v0.0.2 : All field codes version!
    # 20201210010203 : v0.0.2 : Changed on coding conventions.

    cat << EOF

████████╗██████╗░████████╗███████╗██╗░░░░░░██████╗
╚══██╔══╝██╔══██╗╚══██╔══╝██╔════╝██║░░░░░██╔════╝
░░░██║░░░██████╔╝░░░██║░░░█████╗░░██║░░░░░╚█████╗░
░░░██║░░░██╔══██╗░░░██║░░░██╔══╝░░██║░░░░░░╚═══██╗
░░░██║░░░██║░░██║░░░██║░░░███████╗███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚══════╝╚═════╝░

[ Nuri ACAR ] [ nuriacar.com ]

[ TRTELS ] [ TR Phone Numbers Suite ] [ v0.0.2 : 20201210010203 ]

===============================================================================

[ About ]  http://nuriacar.com/cevizlab/2020/10/14/trtels.html

[ Source ] https://github.com/nuriacar/trtels

===============================================================================

212 213 214 215 216 217 222 223 224 225 226 227 228 229 232 233 236 237 242 243
246 247 248 249 252 253 256 257 258 259 262 263 264 265 266 267 272 273 274 275
276 277 282 283 284 285 286 287 288 289 312 313 318 319 322 323 324 325 326 327
328 329 332 333 338 339 342 343 344 345 346 347 348 349 352 353 354 355 356 357
358 359 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379
380 381 382 383 384 385 386 387 388 389 392 412 413 414 415 416 417 422 423 424
425 426 427 428 429 432 433 434 435 436 437 438 439 442 443 446 447 452 453 454
455 456 457 458 459 462 463 464 465 466 467 472 473 474 475 476 477 478 479 482
483 484 485 486 487 488 489 501 505 506 507 510 512 522 530 531 532 533 534 535
536 537 538 539 540 541 542 543 544 545 546 547 548 549 551 552 553 554 555 559
561 562 564 592 594 800 811 822 850 850 888 898 900

[+] Generates +90 prefixed phone numbers space.

[+] Compresses in LZMA individually.
    
    Remember!
    Uncompressed size individually ~140MB, with LZMA ~2.8MB!
    
    Compressed Total : ~520MB
    Extracted Total  : ~30GB

[+] Saves in "trtels_lzma_archive" directory.

[!] Attention!
    
    This program depends on Crunch WL Generator & LZMA (7zip)!
    https://sourceforge.net/projects/crunch-wordlist/
    https://en.wikipedia.org/wiki/7-Zip

===============================================================================
EOF
}

###############################################################################

function _generator {

    local _directory="trtels_lzma_archive"

    mkdir $_directory

    local _field_codes=(212 213 214 215 216 217 222 223 224 225 226 227 228 229 232 233 236 237 242 243 246 247 248 249 252 253 256 257 258 259 262 263 264 265 266 267 272 273 274 275 276 277 282 283 284 285 286 287 288 289 312 313 318 319 322 323 324 325 326 327 328 329 332 333 338 339 342 343 344 345 346 347 348 349 352 353 354 355 356 357 358 359 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 392 412 413 414 415 416 417 422 423 424 425 426 427 428 429 432 433 434 435 436 437 438 439 442 443 446 447 452 453 454 455 456 457 458 459 462 463 464 465 466 467 472 473 474 475 476 477 478 479 482 483 484 485 486 487 488 489 501 505 506 507 510 512 522 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 551 552 553 554 555 559 561 562 564 592 594 800 811 822 850 850 888 898 900)

    for _code in "${_field_codes[@]}"
    do
        printf "\n==========> Generating: [+90 $_code]\n\n"

        # 7 digit : +90 (field code) XXX XX XX 

        # Run Crunch, run.
        eval crunch 13 13 0123456789 -t +90$_code%%%%%%% \
            -o +90$_code.txt -z lzma
        
        mv *.txt.lzma $_directory
    done
}

###############################################################################

function _main {
    _get_time # for processes elapsed time calculation
    printf "\033c" # Check commented area below! Interesting!
    _header
    _generator
    _calc_elapsed_time
}

_main

###############################################################################

# https://stackoverflow.com/questions/5367068/clear-a-terminal-screen-for-real

# Use the following command to do a clear screen instead of merely adding new
# lines ...

# printf "\033c"

# yes that's a 'printf' on the bash prompt.

# You will probably want to define an alias though...

# alias cls='printf "\033c"'

# Explanation

# \033 == \x1B == 27 == ESC

# So this becomes <ESC>c which is the VT100 escape code for resetting the
# terminal. Here is some more information on terminal escape codes.

# Edit

# Here are a few other ways of doing it...

# printf "\ec" #\e is ESC in bash
# echo -en "\ec" #thanks @Jonathon Reinhart.
# # -e    Enable interpretation of of backslash escapes
# # -n    Do not output a new line

# KDE

# The above does not work on the KDE console (called Konsole) but there is
# hope! Use the following sequence of commands to clear the screen and the
# scroll-back buffer...

# clear && echo -en "\e[3J"

# Or perhaps use the following alias on KDE...

# alias cls='clear && echo -en "\e[3J"'

# I got the scroll-back clearing command from here:

# END
###############################################################################
###############################################################################
