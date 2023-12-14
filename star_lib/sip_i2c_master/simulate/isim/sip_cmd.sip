; Wait for resets (micro seconds)
WAIT = 4

;Set number of bytes to transfer
REG_SET = 0x00000001 0x00000001

REG_SET = 0x00005701 0x0000AA55
WAIT = 1500

;Set number of bytes to transfer
REG_SET = 0x00000001 0x00000002

REG_SET = 0x00005701 0xCC33AA55
WAIT = 1500

;Set number of bytes to transfer
REG_SET = 0x00000001 0x00000003

REG_SET = 0x00005701 0xCC33AA55
WAIT = 1500

REG_GET = 0x00005701


;DMA Pull in bytes (from card to host)
;DMAPULL = 0x00000200

;DMA Pull in bytes (from card to host)
;DMAPULL = 0x00000200

WAIT = 10
