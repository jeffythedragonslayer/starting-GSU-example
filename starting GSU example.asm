mem8
lda		#clock data
sta		3039H			;Sets operating frequency
sta		3037H			;Sets CONFIG register
lda		#screen base
sta		3038H			;Sets screen base
lda		#program bank
sta		3034H			; Sets program code bank
lda		#screen size mode
ora		18H				; Sets RON, RAN flag, screen size, and color number
sta		303aH
mem16
rep		#00100000B
lda		#program address
sta		301EH			; Sets program counter