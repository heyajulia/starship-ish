# starship-ish

```bash
docker build -t starship-ish .
docker run -it starship-ish
docker cp $(docker ps --latest --filter "ancestor=starship-ish" --format "{{ .ID }}"):/build/starship/target/i686-unknown-linux-musl/release/starship ish-starship
```

Then transfer the `starship-ish` to iSH, for instance using AirDrop. Be sure to
set the executable bit (`chmod +x …`), and...

```bash
$ ./starship-ish
Illegal instruction
```

> The `dmesg` output is:
>
> ```
> 14 illegal instruction at 0x80754be: 0f fe e1 66 0f df dc 66
> ```
