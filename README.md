## Setup arduino-cli configs

```bash
arduino-cli config init
vi ~/Library/Arduino15/arduino-cli.yaml
```

## Additional urls

```yml
board_manager:
  additional_urls:
  - https://github.com/stm32duino/BoardManagerFiles/raw/main/package_stmicroelectronics_index.json
  - https://dl.espressif.com/dl/package_esp32_index.json
  - http://arduino.esp8266.com/stable/package_esp8266com_index.json
  - https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json
```
