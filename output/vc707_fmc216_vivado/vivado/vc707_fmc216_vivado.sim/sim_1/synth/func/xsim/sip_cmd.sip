

WAIT = 4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FMC216 0x0012400 - 0x00143FE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; set number of bursts
REG_SET = 0x00012402 0x00000001
; set burst size
REG_SET = 0x00012403 0x00000800
; enable all 16 channels
REG_SET = 0x00012401 0x0000FFFF
; waveform load
REG_SET = 0x00012400 0x00000008

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; S1D16 0x00143FF - 0x0014402
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REG_SET = 0x000143FF 0xFFFFFF00
REG_SET = 0x00014400 0xFFFFFFFF
REG_SET = 0x00014401 0xFFFFFFFF
REG_SET = 0x00014402 0xFFFFFFFF

DMAPUSH = 0x00000200


; waveform repeat enable
REG_SET = 0x00012400 0x00000001

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; S1D16 0x00143FF - 0x0014402
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;REG_SET = 0x000143FF 0xFFFF00FF
;REG_SET = 0x00014400 0xFFFFFFFF
;REG_SET = 0x00014401 0xFFFFFFFF
;REG_SET = 0x00014402 0xFFFFFFFF
;
;DMAPUSH = 0x00000200

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; S1D16 0x00143FF - 0x0014402
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;REG_SET = 0x000143FF 0xFF00FFFF
;REG_SET = 0x00014400 0xFFFFFFFF
;REG_SET = 0x00014401 0xFFFFFFFF
;REG_SET = 0x00014402 0xFFFFFFFF

;DMAPUSH = 0x00000200

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; S1D16 0x00143FF - 0x0014402
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;REG_SET = 0x000143FF 0x00FFFFFF
;REG_SET = 0x00014400 0xFFFFFFFF
;REG_SET = 0x00014401 0xFFFFFFFF
;REG_SET = 0x00014402 0xFFFFFFFF

;DMAPUSH = 0x00000200

