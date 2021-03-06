# TRTELS: TR Phone Numbers Suite

#### **TR [ ENG ⇣ ]**

```
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

==========> Generating: [+90 212]

Crunch will now generate the following amount of data: 140000000 bytes
133 MB
0 GB
0 TB
0 PB
Crunch will now generate the following number of lines: 10000000

crunch: 100% completed generating output
Beginning lzma compression.  Please wait.
+90212.txt (1/1)
  100 %     2.706,1 KiB / 133,5 MiB = 0,020   2,0 MiB/s       1:07
```

Bu program [MERNİS : TRNIDS](/cevizlab/2020/10/11/mernis-trnids.html)'in bir
parçası. [Bilgi Teknolojileri Kurumu](https://btk.gov.tr/)'nun [Türkiye Ulusal
Numaralandırma
Planı](https://tr.wikipedia.org/wiki/T%C3%BCrkiye_Ulusal_Numaraland%C4%B1rma_Plan%C4%B1)'nda
yer alan +90 ön ekli şu alan kodlarına dahil tüm telefon numaralarının
üretimini yapıyor:

```
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
```

*nix, Bash, crunch wordlist generator ve LZMA (7zip) bağımlı!

Yukarıdaki listede yer alan her bir alan koduna dahil tüm numaraları (+90 XXX
000 00 00 - +90 XXX 999 99 99) üretip txt dosyası olarak kaydediyor, ardından
LZMA algoritması ile sıkıştırarak "trtels_lzma_archive" isimli klasörde
depoluyor. Sıkıştırılmamış dosya boyutu her bir alan kodu için ~140MB,
LZMA'dan sonra ~2.8MB. Sıkıştırılmamış dosyaların toplam boyutu ~30GB,
sıkıştırılmış dosyaların toplam boyutu ise ~520MB.

`crunch 13 13 0123456789 -t +90$_code%%%%%%% -o +90$_code.txt -z lzma`

LZMA çıkarma işlemleri için "extractor.sh" isimli dosyayı kaynak kod deposuna
ekledim. "trtels_lzma_archive" klasörünün içine kopyalayıp `. extractor.sh`
komutu ile tüm dosyaları çıkartabilirsiniz. Bunun haricinde bir işlemle (7zip)
yüksek ihtimal hata verecek ve dosyaları çıkartmayacaktır. Çıkarıldıktan sonra
toplam dosya boyutunun ~30GB olduğunu unutmayın.

`unlzma -kv *.lzma;`

Bununla birlikte, programın çalışması veya arşivden çıkarma aşamasında `ctrl +
z` veya `ctrl + c` ile sonlandırma işlemi yaparsanız ".fuse_hidden*" gizli
dosyaları oluşuyor. Bu dosyaların oluşma sebebi LZMA ve crunch. Siz silseniz
de tekrar oluşuyor, LZMA ve crunch'ı çağıran process'ler (terminal oturumu
dahil) sonlanmadıkça üretilmeye devam ediyorlar. `lsof .fuse_hidden*` komutu
ile o dosyaları hangi process'in ürettiğini görebilirsiniz. `.
fuse_hidden_killer.sh` komutu ile tüm bu process sonlandırma, dosya silme
işlemlerini otomatize ettim. Aslında şunları yapıyor:

`kill $(ps aux | lsof .fuse_hidden* | awk '{print $2}' | sed -n '1!p');`
komutu ".fuse_hidden*" üreten process'lerin PID numaralarını ayıklayıp
sonlandırıyor.

`rm .fuse_hidden*;` komutu ".fuse_hidden*" dosyalarını siliyor.

`exit;` komutu ise "trtels.sh", crunch ve LZMA çağıran process olan terminal
oturumunu sonlandıracak "canavar saçmasını veya dom dom kurşununu (dumdum
bullet)" sıkıp sisteminizi huzura erdiriyor. :) Şu komutu "trtels.sh"i
çalıştırdığınız terminale yazmanız yeterli:

`. fuse_hidden_killer.sh`

Özetle, böyleyken böyle!

---

#### **ENG**

```
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

==========> Generating: [+90 212]

Crunch will now generate the following amount of data: 140000000 bytes
133 MB
0 GB
0 TB
0 PB
Crunch will now generate the following number of lines: 10000000

crunch: 100% completed generating output
Beginning lzma compression.  Please wait.
+90212.txt (1/1)
  100 %     2.706,1 KiB / 133,5 MiB = 0,020   2,0 MiB/s       1:07
```

This program is part of [MERNIS :
TRNIDS](/cevizlab/2020/10/11/mernis-trnids.html). [Information Technology
Agency](https://btk.gov.tr/)'s [Turkey's National Numbering
Plan](https://tr.wikipedia.org/wiki/T%C3%BCrkiye_Ulusal_Numaraland%C4%B1rma_Plan%C4%B1)
located within realizes the production of all the phone numbers located in the
following area codes:

```
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
```

*nix, Bash, crunch wordlist generator and LZMA (7zip) dependent!

It generates all numbers (+90 XXX 000 00 00 - +90 XXX 999 99 99) included in
each area code in the list above, saves them as a txt file, then compresses
them with the LZMA algorithm and stores them in the folder named
"trtels_lzma_archive". Uncompressed file size ~140MB per area code, ~2.8MB
after LZMA. The total size of uncompressed files is ~30GB, the total size of
compressed files is ~520MB.

`crunch 13 13 0123456789 -t +90$_code%%%%%%% -o +90$_code.txt -z lzma`

For LZMA extractions, I added the file named "extractor.sh" to the source code
repository. Copy it into the "trtels_lzma_archive" folder and extract all
files with the `. extractor.sh` command. Apart from that, a process (7zip)
will most likely fail and will not extract the files. Note that the total file
size is ~30GB after extraction.

`unlzma -kv *.lzma;`

However, if you terminate with `ctrl + z` or `ctrl + c` while the program is
running or extracting from the archive, ".fuse_hidden*" hidden files will be
created. These files are created by LZMA and crunch. It occurs again even if
you delete it, and the processes that call the LZMA and crunch (including the
terminal session) continue to be produced until they end. With the `lsof
.fuse_hidden*` command, you can see which process produced those files. With
the `. fuse_hidden_killer.sh` command, I automated all this process
termination and file deletion. It actually does the following:

The command `kill $(ps aux | lsof .fuse_hidden* | awk '{print $2}' | sed -n
'1!p');`, extracts and terminates the PID numbers of the processes that
generate ".fuse_hidden*".

The command `rm .fuse_hidden*;` deletes ".fuse_hidden*" files.

The `exit;` command brings peace your system by fires the "dumdum bullet" that
will terminate the terminal session, which is the process that calls
"trtels.sh", crunch and LZMA. :) Just type the following command into the
terminal where you run "trtels.sh":

`. fuse_hidden_killer.sh`

In a nutshell, like this!
