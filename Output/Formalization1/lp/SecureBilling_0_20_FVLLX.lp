\ This file has been generated by DOcplex
\ ENCODING=ISO-8859-1
\Problem name: Manuver Model

Minimize
 obj: PriceProv1 + PriceProv2 + PriceProv3 + PriceProv4 + PriceProv5
Subject To
 a_c_fix_component: C1_VM1 = 1
 a_c_fix_component#1: C4_VM1 = 0
 a_c_fix_component#2: C5_VM1 = 0
 a_c_fix_component#3: C1_VM2 = 0
 a_c_fix_component#4: C4_VM2 = 0
 a_c_fix_component#5: C5_VM2 = 1
 a_c_fix_component#6: C1_VM3 = 0
 a_c_fix_component#7: C4_VM3 = 1
 a_c_fix_component#8: C5_VM3 = 0
 c_vm_load_lex_order: C1_VM4 + C2_VM4 + C3_VM4 + C4_VM4 + C5_VM4 - C1_VM5
                      - C2_VM5 - C3_VM5 - C4_VM5 - C5_VM5 >= 0
 c11: x58 - _bool#1 = 0
 c12: _and59 - lex_VM3_comp0 <= 0
 c13: _and59 - _bool#1 <= 0
 c14: _and59 - lex_VM3_comp0 - _bool#1 >= -1
 c15: x62 - _bool#2 = 0
 c16: _and63 - lex_VM3_comp1 <= 0
 c17: _and63 - _bool#2 <= 0
 c18: _and63 - lex_VM3_comp1 - _bool#2 >= -1
 c19: x66 - _bool#3 = 0
 c20: _and67 - lex_VM3_comp2 <= 0
 c21: _and67 - _bool#3 <= 0
 c22: _and67 - lex_VM3_comp2 - _bool#3 >= -1
 c23: x70 - _bool#4 = 0
 c24: _and71 - lex_VM3_comp3 <= 0
 c25: _and71 - _bool#4 <= 0
 c26: _and71 - lex_VM3_comp3 - _bool#4 >= -1
 c_comp_conflict: C1_VM1 + C2_VM1 <= 1
 c_comp_conflict#27: C1_VM1 + C3_VM1 <= 1
 c_comp_conflict#28: C1_VM1 + C4_VM1 <= 1
 c_comp_conflict#29: C1_VM1 + C5_VM1 <= 1
 c_comp_conflict#30: C1_VM2 + C2_VM2 <= 1
 c_comp_conflict#31: C1_VM2 + C3_VM2 <= 1
 c_comp_conflict#32: C1_VM2 + C4_VM2 <= 1
 c_comp_conflict#33: C1_VM2 + C5_VM2 <= 1
 c_comp_conflict#34: C1_VM3 + C2_VM3 <= 1
 c_comp_conflict#35: C1_VM3 + C3_VM3 <= 1
 c_comp_conflict#36: C1_VM3 + C4_VM3 <= 1
 c_comp_conflict#37: C1_VM3 + C5_VM3 <= 1
 c_comp_conflict#38: C1_VM4 + C2_VM4 <= 1
 c_comp_conflict#39: C1_VM4 + C3_VM4 <= 1
 c_comp_conflict#40: C1_VM4 + C4_VM4 <= 1
 c_comp_conflict#41: C1_VM4 + C5_VM4 <= 1
 c_comp_conflict#42: C1_VM5 + C2_VM5 <= 1
 c_comp_conflict#43: C1_VM5 + C3_VM5 <= 1
 c_comp_conflict#44: C1_VM5 + C4_VM5 <= 1
 c_comp_conflict#45: C1_VM5 + C5_VM5 <= 1
 c_comp_conflict#46: C3_VM1 + C5_VM1 <= 1
 c_comp_conflict#47: C4_VM1 + C5_VM1 <= 1
 c_comp_conflict#48: C3_VM2 + C5_VM2 <= 1
 c_comp_conflict#49: C4_VM2 + C5_VM2 <= 1
 c_comp_conflict#50: C3_VM3 + C5_VM3 <= 1
 c_comp_conflict#51: C4_VM3 + C5_VM3 <= 1
 c_comp_conflict#52: C3_VM4 + C5_VM4 <= 1
 c_comp_conflict#53: C4_VM4 + C5_VM4 <= 1
 c_comp_conflict#54: C3_VM5 + C5_VM5 <= 1
 c_comp_conflict#55: C4_VM5 + C5_VM5 <= 1
 c_upper_lower_bound: C1_VM1 + C1_VM2 + C1_VM3 + C1_VM4 + C1_VM5 = 1
 c_upper_lower_bound#57: C5_VM1 + C5_VM2 + C5_VM3 + C5_VM4 + C5_VM5 = 1
 c_upper_lower_bound#58: C1_VM1 + C1_VM2 + C1_VM3 + C1_VM4 + C1_VM5 >= 1
 c_upper_lower_bound#59: C2_VM1 + C2_VM2 + C2_VM3 + C2_VM4 + C2_VM5 >= 1
 c_upper_lower_bound#60: C3_VM1 + C3_VM2 + C3_VM3 + C3_VM4 + C3_VM5 >= 1
 c_upper_lower_bound#61: C4_VM1 + C4_VM2 + C4_VM3 + C4_VM4 + C4_VM5 >= 1
 c_upper_lower_bound#62: C5_VM1 + C5_VM2 + C5_VM3 + C5_VM4 + C5_VM5 >= 1
 c_hard_cpu: 4 C1_VM1 + 2 C2_VM1 + 4 C3_VM1 + 2 C4_VM1 + 4 C5_VM1 - ProcProv1
              <= 0
 c_hard_mem: 4096 C1_VM1 + 2048 C2_VM1 + 4096 C3_VM1 + 512 C4_VM1 + 2048 C5_VM1
             - MemProv1 <= 0
 c_hard_storage: 1024 C1_VM1 + 512 C2_VM1 + 512 C3_VM1 + 2000 C4_VM1
                 + 500 C5_VM1 - StorageProv1 <= 0
 c_hard_cpu#66: 4 C1_VM2 + 2 C2_VM2 + 4 C3_VM2 + 2 C4_VM2 + 4 C5_VM2 - ProcProv2
                 <= 0
 c_hard_mem#67: 4096 C1_VM2 + 2048 C2_VM2 + 4096 C3_VM2 + 512 C4_VM2
                + 2048 C5_VM2 - MemProv2 <= 0
 c_hard_storage#68: 1024 C1_VM2 + 512 C2_VM2 + 512 C3_VM2 + 2000 C4_VM2
                    + 500 C5_VM2 - StorageProv2 <= 0
 c_hard_cpu#69: 4 C1_VM3 + 2 C2_VM3 + 4 C3_VM3 + 2 C4_VM3 + 4 C5_VM3 - ProcProv3
                 <= 0
 c_hard_mem#70: 4096 C1_VM3 + 2048 C2_VM3 + 4096 C3_VM3 + 512 C4_VM3
                + 2048 C5_VM3 - MemProv3 <= 0
 c_hard_storage#71: 1024 C1_VM3 + 512 C2_VM3 + 512 C3_VM3 + 2000 C4_VM3
                    + 500 C5_VM3 - StorageProv3 <= 0
 c_hard_cpu#72: 4 C1_VM4 + 2 C2_VM4 + 4 C3_VM4 + 2 C4_VM4 + 4 C5_VM4 - ProcProv4
                 <= 0
 c_hard_mem#73: 4096 C1_VM4 + 2048 C2_VM4 + 4096 C3_VM4 + 512 C4_VM4
                + 2048 C5_VM4 - MemProv4 <= 0
 c_hard_storage#74: 1024 C1_VM4 + 512 C2_VM4 + 512 C3_VM4 + 2000 C4_VM4
                    + 500 C5_VM4 - StorageProv4 <= 0
 c_hard_cpu#75: 4 C1_VM5 + 2 C2_VM5 + 4 C3_VM5 + 2 C4_VM5 + 4 C5_VM5 - ProcProv5
                 <= 0
 c_hard_mem#76: 4096 C1_VM5 + 2048 C2_VM5 + 4096 C3_VM5 + 512 C4_VM5
                + 2048 C5_VM5 - MemProv5 <= 0
 c_hard_storage#77: 1024 C1_VM5 + 512 C2_VM5 + 512 C3_VM5 + 2000 C4_VM5
                    + 500 C5_VM5 - StorageProv5 <= 0
 c0_vm_allocated: vm1 = 1 <-> C1_VM1 + C2_VM1 + C3_VM1 + C4_VM1 + C5_VM1 >= 1
 c1_vm_allocated: vm2 = 1 <-> C1_VM2 + C2_VM2 + C3_VM2 + C4_VM2 + C5_VM2 >= 1
 c2_vm_allocated: vm3 = 1 <-> C1_VM3 + C2_VM3 + C3_VM3 + C4_VM3 + C5_VM3 >= 1
 c3_vm_allocated: vm4 = 1 <-> C1_VM4 + C2_VM4 + C3_VM4 + C4_VM4 + C5_VM4 >= 1
 c4_vm_allocated: vm5 = 1 <-> C1_VM5 + C2_VM5 + C3_VM5 + C4_VM5 + C5_VM5 >= 1
 c0_vm_free_price_0: vm1 = 0 -> PriceProv1 = 0
 c1_vm_free_price_0: vm2 = 0 -> PriceProv2 = 0
 c2_vm_free_price_0: vm3 = 0 -> PriceProv3 = 0
 c3_vm_free_price_0: vm4 = 0 -> PriceProv4 = 0
 c4_vm_free_price_0: vm5 = 0 -> PriceProv5 = 0
 lc11: lex_VM3_comp0 = 1 <-> C1_VM4 + C2_VM4 + C3_VM4 + C4_VM4 + C5_VM4 - C1_VM5
       - C2_VM5 - C3_VM5 - C4_VM5 - C5_VM5 = 0
 lc12: lex_VM3_comp0 = 1 -> C1_VM4 - C1_VM5 >= 0
 lc13: _bool#1 = 1 <-> C1_VM4 - C1_VM5 = 0
 lc14: lex_VM3_comp1 = 1 <-> _and59 = 1
 lc15: lex_VM3_comp1 = 1 -> C2_VM4 - C2_VM5 >= 0
 lc16: _bool#2 = 1 <-> C2_VM4 - C2_VM5 = 0
 lc17: lex_VM3_comp2 = 1 <-> _and63 = 1
 lc18: lex_VM3_comp2 = 1 -> C3_VM4 - C3_VM5 >= 0
 lc19: _bool#3 = 1 <-> C3_VM4 - C3_VM5 = 0
 lc20: lex_VM3_comp3 = 1 <-> _and67 = 1
 lc21: lex_VM3_comp3 = 1 -> C4_VM4 - C4_VM5 >= 0
 lc22: _bool#4 = 1 <-> C4_VM4 - C4_VM5 = 0
 lc23: lex_VM3_comp4 = 1 <-> _and71 = 1
 lc24: lex_VM3_comp4 = 1 -> C5_VM4 - C5_VM5 >= 0
 lc25: aux_hard1 = 1 <-> vmType1 = 1
 c_order_vm_price: aux_hard1 = 1 -> PriceProv1 = 8403
 c_order_vm_cpu: aux_hard1 = 1 -> ProcProv1 = 64
 c_order_vm_memory: aux_hard1 = 1 -> MemProv1 = 976000
 c_order_vm_storage: aux_hard1 = 1 -> StorageProv1 = 1000
 lc30: aux_hard2 = 1 <-> vmType1 = 2
 c_order_vm_price#30: aux_hard2 = 1 -> PriceProv1 = 9152
 c_order_vm_cpu#31: aux_hard2 = 1 -> ProcProv1 = 64
 c_order_vm_memory#32: aux_hard2 = 1 -> MemProv1 = 488000
 c_order_vm_storage#33: aux_hard2 = 1 -> StorageProv1 = 8000
 lc35: aux_hard3 = 1 <-> vmType1 = 3
 c_order_vm_price#35: aux_hard3 = 1 -> PriceProv1 = 16000
 c_order_vm_cpu#36: aux_hard3 = 1 -> ProcProv1 = 64
 c_order_vm_memory#37: aux_hard3 = 1 -> MemProv1 = 1952
 c_order_vm_storage#38: aux_hard3 = 1 -> StorageProv1 = 1000
 lc40: aux_hard4 = 1 <-> vmType1 = 4
 c_order_vm_price#40: aux_hard4 = 1 -> PriceProv1 = 4105
 c_order_vm_cpu#41: aux_hard4 = 1 -> ProcProv1 = 32
 c_order_vm_memory#42: aux_hard4 = 1 -> MemProv1 = 244000
 c_order_vm_storage#43: aux_hard4 = 1 -> StorageProv1 = 2000
 lc45: aux_hard5 = 1 <-> vmType1 = 5
 c_order_vm_price#45: aux_hard5 = 1 -> PriceProv1 = 4576
 c_order_vm_cpu#46: aux_hard5 = 1 -> ProcProv1 = 32
 c_order_vm_memory#47: aux_hard5 = 1 -> MemProv1 = 244000
 c_order_vm_storage#48: aux_hard5 = 1 -> StorageProv1 = 4000
 lc50: aux_hard6 = 1 <-> vmType1 = 6
 c_order_vm_price#50: aux_hard6 = 1 -> PriceProv1 = 1373
 c_order_vm_cpu#51: aux_hard6 = 1 -> ProcProv1 = 16
 c_order_vm_memory#52: aux_hard6 = 1 -> MemProv1 = 122000
 c_order_vm_storage#53: aux_hard6 = 1 -> StorageProv1 = 2000
 lc55: aux_hard7 = 1 <-> vmType1 = 7
 c_order_vm_price#55: aux_hard7 = 1 -> PriceProv1 = 1430
 c_order_vm_cpu#56: aux_hard7 = 1 -> ProcProv1 = 16
 c_order_vm_memory#57: aux_hard7 = 1 -> MemProv1 = 30000
 c_order_vm_storage#58: aux_hard7 = 1 -> StorageProv1 = 2000
 lc60: aux_hard8 = 1 <-> vmType1 = 8
 c_order_vm_price#60: aux_hard8 = 1 -> PriceProv1 = 5400
 c_order_vm_cpu#61: aux_hard8 = 1 -> ProcProv1 = 17
 c_order_vm_memory#62: aux_hard8 = 1 -> MemProv1 = 117000
 c_order_vm_storage#63: aux_hard8 = 1 -> StorageProv1 = 24000
 lc65: aux_hard9 = 1 <-> vmType1 = 9
 c_order_vm_price#65: aux_hard9 = 1 -> PriceProv1 = 3079
 c_order_vm_cpu#66: aux_hard9 = 1 -> ProcProv1 = 16
 c_order_vm_memory#67: aux_hard9 = 1 -> MemProv1 = 122000
 c_order_vm_storage#68: aux_hard9 = 1 -> StorageProv1 = 1000
 lc70: aux_hard10 = 1 <-> vmType1 = 10
 c_order_vm_price#70: aux_hard10 = 1 -> PriceProv1 = 1470
 c_order_vm_cpu#71: aux_hard10 = 1 -> ProcProv1 = 8
 c_order_vm_memory#72: aux_hard10 = 1 -> MemProv1 = 61000
 c_order_vm_storage#73: aux_hard10 = 1 -> StorageProv1 = 6000
 lc75: aux_hard11 = 1 <-> vmType1 = 11
 c_order_vm_price#75: aux_hard11 = 1 -> PriceProv1 = 1301
 c_order_vm_cpu#76: aux_hard11 = 1 -> ProcProv1 = 8
 c_order_vm_memory#77: aux_hard11 = 1 -> MemProv1 = 68400
 c_order_vm_storage#78: aux_hard11 = 1 -> StorageProv1 = 2000
 lc80: aux_hard12 = 1 <-> vmType1 = 12
 c_order_vm_price#80: aux_hard12 = 1 -> PriceProv1 = 1288
 c_order_vm_cpu#81: aux_hard12 = 1 -> ProcProv1 = 8
 c_order_vm_memory#82: aux_hard12 = 1 -> MemProv1 = 68400
 c_order_vm_storage#83: aux_hard12 = 1 -> StorageProv1 = 2000
 lc85: aux_hard13 = 1 <-> vmType1 = 13
 c_order_vm_price#85: aux_hard13 = 1 -> PriceProv1 = 402
 c_order_vm_cpu#86: aux_hard13 = 1 -> ProcProv1 = 4
 c_order_vm_memory#87: aux_hard13 = 1 -> MemProv1 = 15000
 c_order_vm_storage#88: aux_hard13 = 1 -> StorageProv1 = 2000
 lc90: aux_hard14 = 1 <-> vmType1 = 14
 c_order_vm_price#90: aux_hard14 = 1 -> PriceProv1 = 827
 c_order_vm_cpu#91: aux_hard14 = 1 -> ProcProv1 = 4
 c_order_vm_memory#92: aux_hard14 = 1 -> MemProv1 = 30500
 c_order_vm_storage#93: aux_hard14 = 1 -> StorageProv1 = 3000
 lc95: aux_hard15 = 1 <-> vmType1 = 15
 c_order_vm_price#95: aux_hard15 = 1 -> PriceProv1 = 379
 c_order_vm_cpu#96: aux_hard15 = 1 -> ProcProv1 = 4
 c_order_vm_memory#97: aux_hard15 = 1 -> MemProv1 = 30500
 c_order_vm_storage#98: aux_hard15 = 1 -> StorageProv1 = 1000
 lc100: aux_hard16 = 1 <-> vmType1 = 16
 c_order_vm_price#100: aux_hard16 = 1 -> PriceProv1 = 146
 c_order_vm_cpu#101: aux_hard16 = 1 -> ProcProv1 = 2
 c_order_vm_memory#102: aux_hard16 = 1 -> MemProv1 = 7500
 c_order_vm_storage#103: aux_hard16 = 1 -> StorageProv1 = 1000
 lc105: aux_hard17 = 1 <-> vmType1 = 17
 c_order_vm_price#105: aux_hard17 = 1 -> PriceProv1 = 128
 c_order_vm_cpu#106: aux_hard17 = 1 -> ProcProv1 = 2
 c_order_vm_memory#107: aux_hard17 = 1 -> MemProv1 = 3750
 c_order_vm_storage#108: aux_hard17 = 1 -> StorageProv1 = 2000
 lc110: aux_hard18 = 1 <-> vmType1 = 18
 c_order_vm_price#110: aux_hard18 = 1 -> PriceProv1 = 58
 c_order_vm_cpu#111: aux_hard18 = 1 -> ProcProv1 = 1
 c_order_vm_memory#112: aux_hard18 = 1 -> MemProv1 = 1700
 c_order_vm_storage#113: aux_hard18 = 1 -> StorageProv1 = 1000
 lc115: aux_hard19 = 1 <-> vmType1 = 19
 c_order_vm_price#115: aux_hard19 = 1 -> PriceProv1 = 93
 c_order_vm_cpu#116: aux_hard19 = 1 -> ProcProv1 = 1
 c_order_vm_memory#117: aux_hard19 = 1 -> MemProv1 = 3750
 c_order_vm_storage#118: aux_hard19 = 1 -> StorageProv1 = 1000
 lc120: aux_hard20 = 1 <-> vmType1 = 20
 c_order_vm_price#120: aux_hard20 = 1 -> PriceProv1 = 98
 c_order_vm_cpu#121: aux_hard20 = 1 -> ProcProv1 = 1
 c_order_vm_memory#122: aux_hard20 = 1 -> MemProv1 = 3750
 c_order_vm_storage#123: aux_hard20 = 1 -> StorageProv1 = 1000
 lc125: vm1 = 1 -> vmType1 >= 1
 lc126: aux_hard21 = 1 <-> vmType2 = 1
 c_order_vm_price#126: aux_hard21 = 1 -> PriceProv2 = 8403
 c_order_vm_cpu#127: aux_hard21 = 1 -> ProcProv2 = 64
 c_order_vm_memory#128: aux_hard21 = 1 -> MemProv2 = 976000
 c_order_vm_storage#129: aux_hard21 = 1 -> StorageProv2 = 1000
 lc131: aux_hard22 = 1 <-> vmType2 = 2
 c_order_vm_price#131: aux_hard22 = 1 -> PriceProv2 = 9152
 c_order_vm_cpu#132: aux_hard22 = 1 -> ProcProv2 = 64
 c_order_vm_memory#133: aux_hard22 = 1 -> MemProv2 = 488000
 c_order_vm_storage#134: aux_hard22 = 1 -> StorageProv2 = 8000
 lc136: aux_hard23 = 1 <-> vmType2 = 3
 c_order_vm_price#136: aux_hard23 = 1 -> PriceProv2 = 16000
 c_order_vm_cpu#137: aux_hard23 = 1 -> ProcProv2 = 64
 c_order_vm_memory#138: aux_hard23 = 1 -> MemProv2 = 1952
 c_order_vm_storage#139: aux_hard23 = 1 -> StorageProv2 = 1000
 lc141: aux_hard24 = 1 <-> vmType2 = 4
 c_order_vm_price#141: aux_hard24 = 1 -> PriceProv2 = 4105
 c_order_vm_cpu#142: aux_hard24 = 1 -> ProcProv2 = 32
 c_order_vm_memory#143: aux_hard24 = 1 -> MemProv2 = 244000
 c_order_vm_storage#144: aux_hard24 = 1 -> StorageProv2 = 2000
 lc146: aux_hard25 = 1 <-> vmType2 = 5
 c_order_vm_price#146: aux_hard25 = 1 -> PriceProv2 = 4576
 c_order_vm_cpu#147: aux_hard25 = 1 -> ProcProv2 = 32
 c_order_vm_memory#148: aux_hard25 = 1 -> MemProv2 = 244000
 c_order_vm_storage#149: aux_hard25 = 1 -> StorageProv2 = 4000
 lc151: aux_hard26 = 1 <-> vmType2 = 6
 c_order_vm_price#151: aux_hard26 = 1 -> PriceProv2 = 1373
 c_order_vm_cpu#152: aux_hard26 = 1 -> ProcProv2 = 16
 c_order_vm_memory#153: aux_hard26 = 1 -> MemProv2 = 122000
 c_order_vm_storage#154: aux_hard26 = 1 -> StorageProv2 = 2000
 lc156: aux_hard27 = 1 <-> vmType2 = 7
 c_order_vm_price#156: aux_hard27 = 1 -> PriceProv2 = 1430
 c_order_vm_cpu#157: aux_hard27 = 1 -> ProcProv2 = 16
 c_order_vm_memory#158: aux_hard27 = 1 -> MemProv2 = 30000
 c_order_vm_storage#159: aux_hard27 = 1 -> StorageProv2 = 2000
 lc161: aux_hard28 = 1 <-> vmType2 = 8
 c_order_vm_price#161: aux_hard28 = 1 -> PriceProv2 = 5400
 c_order_vm_cpu#162: aux_hard28 = 1 -> ProcProv2 = 17
 c_order_vm_memory#163: aux_hard28 = 1 -> MemProv2 = 117000
 c_order_vm_storage#164: aux_hard28 = 1 -> StorageProv2 = 24000
 lc166: aux_hard29 = 1 <-> vmType2 = 9
 c_order_vm_price#166: aux_hard29 = 1 -> PriceProv2 = 3079
 c_order_vm_cpu#167: aux_hard29 = 1 -> ProcProv2 = 16
 c_order_vm_memory#168: aux_hard29 = 1 -> MemProv2 = 122000
 c_order_vm_storage#169: aux_hard29 = 1 -> StorageProv2 = 1000
 lc171: aux_hard30 = 1 <-> vmType2 = 10
 c_order_vm_price#171: aux_hard30 = 1 -> PriceProv2 = 1470
 c_order_vm_cpu#172: aux_hard30 = 1 -> ProcProv2 = 8
 c_order_vm_memory#173: aux_hard30 = 1 -> MemProv2 = 61000
 c_order_vm_storage#174: aux_hard30 = 1 -> StorageProv2 = 6000
 lc176: aux_hard31 = 1 <-> vmType2 = 11
 c_order_vm_price#176: aux_hard31 = 1 -> PriceProv2 = 1301
 c_order_vm_cpu#177: aux_hard31 = 1 -> ProcProv2 = 8
 c_order_vm_memory#178: aux_hard31 = 1 -> MemProv2 = 68400
 c_order_vm_storage#179: aux_hard31 = 1 -> StorageProv2 = 2000
 lc181: aux_hard32 = 1 <-> vmType2 = 12
 c_order_vm_price#181: aux_hard32 = 1 -> PriceProv2 = 1288
 c_order_vm_cpu#182: aux_hard32 = 1 -> ProcProv2 = 8
 c_order_vm_memory#183: aux_hard32 = 1 -> MemProv2 = 68400
 c_order_vm_storage#184: aux_hard32 = 1 -> StorageProv2 = 2000
 lc186: aux_hard33 = 1 <-> vmType2 = 13
 c_order_vm_price#186: aux_hard33 = 1 -> PriceProv2 = 402
 c_order_vm_cpu#187: aux_hard33 = 1 -> ProcProv2 = 4
 c_order_vm_memory#188: aux_hard33 = 1 -> MemProv2 = 15000
 c_order_vm_storage#189: aux_hard33 = 1 -> StorageProv2 = 2000
 lc191: aux_hard34 = 1 <-> vmType2 = 14
 c_order_vm_price#191: aux_hard34 = 1 -> PriceProv2 = 827
 c_order_vm_cpu#192: aux_hard34 = 1 -> ProcProv2 = 4
 c_order_vm_memory#193: aux_hard34 = 1 -> MemProv2 = 30500
 c_order_vm_storage#194: aux_hard34 = 1 -> StorageProv2 = 3000
 lc196: aux_hard35 = 1 <-> vmType2 = 15
 c_order_vm_price#196: aux_hard35 = 1 -> PriceProv2 = 379
 c_order_vm_cpu#197: aux_hard35 = 1 -> ProcProv2 = 4
 c_order_vm_memory#198: aux_hard35 = 1 -> MemProv2 = 30500
 c_order_vm_storage#199: aux_hard35 = 1 -> StorageProv2 = 1000
 lc201: aux_hard36 = 1 <-> vmType2 = 16
 c_order_vm_price#201: aux_hard36 = 1 -> PriceProv2 = 146
 c_order_vm_cpu#202: aux_hard36 = 1 -> ProcProv2 = 2
 c_order_vm_memory#203: aux_hard36 = 1 -> MemProv2 = 7500
 c_order_vm_storage#204: aux_hard36 = 1 -> StorageProv2 = 1000
 lc206: aux_hard37 = 1 <-> vmType2 = 17
 c_order_vm_price#206: aux_hard37 = 1 -> PriceProv2 = 128
 c_order_vm_cpu#207: aux_hard37 = 1 -> ProcProv2 = 2
 c_order_vm_memory#208: aux_hard37 = 1 -> MemProv2 = 3750
 c_order_vm_storage#209: aux_hard37 = 1 -> StorageProv2 = 2000
 lc211: aux_hard38 = 1 <-> vmType2 = 18
 c_order_vm_price#211: aux_hard38 = 1 -> PriceProv2 = 58
 c_order_vm_cpu#212: aux_hard38 = 1 -> ProcProv2 = 1
 c_order_vm_memory#213: aux_hard38 = 1 -> MemProv2 = 1700
 c_order_vm_storage#214: aux_hard38 = 1 -> StorageProv2 = 1000
 lc216: aux_hard39 = 1 <-> vmType2 = 19
 c_order_vm_price#216: aux_hard39 = 1 -> PriceProv2 = 93
 c_order_vm_cpu#217: aux_hard39 = 1 -> ProcProv2 = 1
 c_order_vm_memory#218: aux_hard39 = 1 -> MemProv2 = 3750
 c_order_vm_storage#219: aux_hard39 = 1 -> StorageProv2 = 1000
 lc221: aux_hard40 = 1 <-> vmType2 = 20
 c_order_vm_price#221: aux_hard40 = 1 -> PriceProv2 = 98
 c_order_vm_cpu#222: aux_hard40 = 1 -> ProcProv2 = 1
 c_order_vm_memory#223: aux_hard40 = 1 -> MemProv2 = 3750
 c_order_vm_storage#224: aux_hard40 = 1 -> StorageProv2 = 1000
 lc226: vm2 = 1 -> vmType2 >= 1
 lc227: aux_hard41 = 1 <-> vmType3 = 1
 c_order_vm_price#227: aux_hard41 = 1 -> PriceProv3 = 8403
 c_order_vm_cpu#228: aux_hard41 = 1 -> ProcProv3 = 64
 c_order_vm_memory#229: aux_hard41 = 1 -> MemProv3 = 976000
 c_order_vm_storage#230: aux_hard41 = 1 -> StorageProv3 = 1000
 lc232: aux_hard42 = 1 <-> vmType3 = 2
 c_order_vm_price#232: aux_hard42 = 1 -> PriceProv3 = 9152
 c_order_vm_cpu#233: aux_hard42 = 1 -> ProcProv3 = 64
 c_order_vm_memory#234: aux_hard42 = 1 -> MemProv3 = 488000
 c_order_vm_storage#235: aux_hard42 = 1 -> StorageProv3 = 8000
 lc237: aux_hard43 = 1 <-> vmType3 = 3
 c_order_vm_price#237: aux_hard43 = 1 -> PriceProv3 = 16000
 c_order_vm_cpu#238: aux_hard43 = 1 -> ProcProv3 = 64
 c_order_vm_memory#239: aux_hard43 = 1 -> MemProv3 = 1952
 c_order_vm_storage#240: aux_hard43 = 1 -> StorageProv3 = 1000
 lc242: aux_hard44 = 1 <-> vmType3 = 4
 c_order_vm_price#242: aux_hard44 = 1 -> PriceProv3 = 4105
 c_order_vm_cpu#243: aux_hard44 = 1 -> ProcProv3 = 32
 c_order_vm_memory#244: aux_hard44 = 1 -> MemProv3 = 244000
 c_order_vm_storage#245: aux_hard44 = 1 -> StorageProv3 = 2000
 lc247: aux_hard45 = 1 <-> vmType3 = 5
 c_order_vm_price#247: aux_hard45 = 1 -> PriceProv3 = 4576
 c_order_vm_cpu#248: aux_hard45 = 1 -> ProcProv3 = 32
 c_order_vm_memory#249: aux_hard45 = 1 -> MemProv3 = 244000
 c_order_vm_storage#250: aux_hard45 = 1 -> StorageProv3 = 4000
 lc252: aux_hard46 = 1 <-> vmType3 = 6
 c_order_vm_price#252: aux_hard46 = 1 -> PriceProv3 = 1373
 c_order_vm_cpu#253: aux_hard46 = 1 -> ProcProv3 = 16
 c_order_vm_memory#254: aux_hard46 = 1 -> MemProv3 = 122000
 c_order_vm_storage#255: aux_hard46 = 1 -> StorageProv3 = 2000
 lc257: aux_hard47 = 1 <-> vmType3 = 7
 c_order_vm_price#257: aux_hard47 = 1 -> PriceProv3 = 1430
 c_order_vm_cpu#258: aux_hard47 = 1 -> ProcProv3 = 16
 c_order_vm_memory#259: aux_hard47 = 1 -> MemProv3 = 30000
 c_order_vm_storage#260: aux_hard47 = 1 -> StorageProv3 = 2000
 lc262: aux_hard48 = 1 <-> vmType3 = 8
 c_order_vm_price#262: aux_hard48 = 1 -> PriceProv3 = 5400
 c_order_vm_cpu#263: aux_hard48 = 1 -> ProcProv3 = 17
 c_order_vm_memory#264: aux_hard48 = 1 -> MemProv3 = 117000
 c_order_vm_storage#265: aux_hard48 = 1 -> StorageProv3 = 24000
 lc267: aux_hard49 = 1 <-> vmType3 = 9
 c_order_vm_price#267: aux_hard49 = 1 -> PriceProv3 = 3079
 c_order_vm_cpu#268: aux_hard49 = 1 -> ProcProv3 = 16
 c_order_vm_memory#269: aux_hard49 = 1 -> MemProv3 = 122000
 c_order_vm_storage#270: aux_hard49 = 1 -> StorageProv3 = 1000
 lc272: aux_hard50 = 1 <-> vmType3 = 10
 c_order_vm_price#272: aux_hard50 = 1 -> PriceProv3 = 1470
 c_order_vm_cpu#273: aux_hard50 = 1 -> ProcProv3 = 8
 c_order_vm_memory#274: aux_hard50 = 1 -> MemProv3 = 61000
 c_order_vm_storage#275: aux_hard50 = 1 -> StorageProv3 = 6000
 lc277: aux_hard51 = 1 <-> vmType3 = 11
 c_order_vm_price#277: aux_hard51 = 1 -> PriceProv3 = 1301
 c_order_vm_cpu#278: aux_hard51 = 1 -> ProcProv3 = 8
 c_order_vm_memory#279: aux_hard51 = 1 -> MemProv3 = 68400
 c_order_vm_storage#280: aux_hard51 = 1 -> StorageProv3 = 2000
 lc282: aux_hard52 = 1 <-> vmType3 = 12
 c_order_vm_price#282: aux_hard52 = 1 -> PriceProv3 = 1288
 c_order_vm_cpu#283: aux_hard52 = 1 -> ProcProv3 = 8
 c_order_vm_memory#284: aux_hard52 = 1 -> MemProv3 = 68400
 c_order_vm_storage#285: aux_hard52 = 1 -> StorageProv3 = 2000
 lc287: aux_hard53 = 1 <-> vmType3 = 13
 c_order_vm_price#287: aux_hard53 = 1 -> PriceProv3 = 402
 c_order_vm_cpu#288: aux_hard53 = 1 -> ProcProv3 = 4
 c_order_vm_memory#289: aux_hard53 = 1 -> MemProv3 = 15000
 c_order_vm_storage#290: aux_hard53 = 1 -> StorageProv3 = 2000
 lc292: aux_hard54 = 1 <-> vmType3 = 14
 c_order_vm_price#292: aux_hard54 = 1 -> PriceProv3 = 827
 c_order_vm_cpu#293: aux_hard54 = 1 -> ProcProv3 = 4
 c_order_vm_memory#294: aux_hard54 = 1 -> MemProv3 = 30500
 c_order_vm_storage#295: aux_hard54 = 1 -> StorageProv3 = 3000
 lc297: aux_hard55 = 1 <-> vmType3 = 15
 c_order_vm_price#297: aux_hard55 = 1 -> PriceProv3 = 379
 c_order_vm_cpu#298: aux_hard55 = 1 -> ProcProv3 = 4
 c_order_vm_memory#299: aux_hard55 = 1 -> MemProv3 = 30500
 c_order_vm_storage#300: aux_hard55 = 1 -> StorageProv3 = 1000
 lc302: aux_hard56 = 1 <-> vmType3 = 16
 c_order_vm_price#302: aux_hard56 = 1 -> PriceProv3 = 146
 c_order_vm_cpu#303: aux_hard56 = 1 -> ProcProv3 = 2
 c_order_vm_memory#304: aux_hard56 = 1 -> MemProv3 = 7500
 c_order_vm_storage#305: aux_hard56 = 1 -> StorageProv3 = 1000
 lc307: aux_hard57 = 1 <-> vmType3 = 17
 c_order_vm_price#307: aux_hard57 = 1 -> PriceProv3 = 128
 c_order_vm_cpu#308: aux_hard57 = 1 -> ProcProv3 = 2
 c_order_vm_memory#309: aux_hard57 = 1 -> MemProv3 = 3750
 c_order_vm_storage#310: aux_hard57 = 1 -> StorageProv3 = 2000
 lc312: aux_hard58 = 1 <-> vmType3 = 18
 c_order_vm_price#312: aux_hard58 = 1 -> PriceProv3 = 58
 c_order_vm_cpu#313: aux_hard58 = 1 -> ProcProv3 = 1
 c_order_vm_memory#314: aux_hard58 = 1 -> MemProv3 = 1700
 c_order_vm_storage#315: aux_hard58 = 1 -> StorageProv3 = 1000
 lc317: aux_hard59 = 1 <-> vmType3 = 19
 c_order_vm_price#317: aux_hard59 = 1 -> PriceProv3 = 93
 c_order_vm_cpu#318: aux_hard59 = 1 -> ProcProv3 = 1
 c_order_vm_memory#319: aux_hard59 = 1 -> MemProv3 = 3750
 c_order_vm_storage#320: aux_hard59 = 1 -> StorageProv3 = 1000
 lc322: aux_hard60 = 1 <-> vmType3 = 20
 c_order_vm_price#322: aux_hard60 = 1 -> PriceProv3 = 98
 c_order_vm_cpu#323: aux_hard60 = 1 -> ProcProv3 = 1
 c_order_vm_memory#324: aux_hard60 = 1 -> MemProv3 = 3750
 c_order_vm_storage#325: aux_hard60 = 1 -> StorageProv3 = 1000
 lc327: vm3 = 1 -> vmType3 >= 1
 lc328: aux_hard61 = 1 <-> vmType4 = 1
 c_order_vm_price#328: aux_hard61 = 1 -> PriceProv4 = 8403
 c_order_vm_cpu#329: aux_hard61 = 1 -> ProcProv4 = 64
 c_order_vm_memory#330: aux_hard61 = 1 -> MemProv4 = 976000
 c_order_vm_storage#331: aux_hard61 = 1 -> StorageProv4 = 1000
 lc333: aux_hard62 = 1 <-> vmType4 = 2
 c_order_vm_price#333: aux_hard62 = 1 -> PriceProv4 = 9152
 c_order_vm_cpu#334: aux_hard62 = 1 -> ProcProv4 = 64
 c_order_vm_memory#335: aux_hard62 = 1 -> MemProv4 = 488000
 c_order_vm_storage#336: aux_hard62 = 1 -> StorageProv4 = 8000
 lc338: aux_hard63 = 1 <-> vmType4 = 3
 c_order_vm_price#338: aux_hard63 = 1 -> PriceProv4 = 16000
 c_order_vm_cpu#339: aux_hard63 = 1 -> ProcProv4 = 64
 c_order_vm_memory#340: aux_hard63 = 1 -> MemProv4 = 1952
 c_order_vm_storage#341: aux_hard63 = 1 -> StorageProv4 = 1000
 lc343: aux_hard64 = 1 <-> vmType4 = 4
 c_order_vm_price#343: aux_hard64 = 1 -> PriceProv4 = 4105
 c_order_vm_cpu#344: aux_hard64 = 1 -> ProcProv4 = 32
 c_order_vm_memory#345: aux_hard64 = 1 -> MemProv4 = 244000
 c_order_vm_storage#346: aux_hard64 = 1 -> StorageProv4 = 2000
 lc348: aux_hard65 = 1 <-> vmType4 = 5
 c_order_vm_price#348: aux_hard65 = 1 -> PriceProv4 = 4576
 c_order_vm_cpu#349: aux_hard65 = 1 -> ProcProv4 = 32
 c_order_vm_memory#350: aux_hard65 = 1 -> MemProv4 = 244000
 c_order_vm_storage#351: aux_hard65 = 1 -> StorageProv4 = 4000
 lc353: aux_hard66 = 1 <-> vmType4 = 6
 c_order_vm_price#353: aux_hard66 = 1 -> PriceProv4 = 1373
 c_order_vm_cpu#354: aux_hard66 = 1 -> ProcProv4 = 16
 c_order_vm_memory#355: aux_hard66 = 1 -> MemProv4 = 122000
 c_order_vm_storage#356: aux_hard66 = 1 -> StorageProv4 = 2000
 lc358: aux_hard67 = 1 <-> vmType4 = 7
 c_order_vm_price#358: aux_hard67 = 1 -> PriceProv4 = 1430
 c_order_vm_cpu#359: aux_hard67 = 1 -> ProcProv4 = 16
 c_order_vm_memory#360: aux_hard67 = 1 -> MemProv4 = 30000
 c_order_vm_storage#361: aux_hard67 = 1 -> StorageProv4 = 2000
 lc363: aux_hard68 = 1 <-> vmType4 = 8
 c_order_vm_price#363: aux_hard68 = 1 -> PriceProv4 = 5400
 c_order_vm_cpu#364: aux_hard68 = 1 -> ProcProv4 = 17
 c_order_vm_memory#365: aux_hard68 = 1 -> MemProv4 = 117000
 c_order_vm_storage#366: aux_hard68 = 1 -> StorageProv4 = 24000
 lc368: aux_hard69 = 1 <-> vmType4 = 9
 c_order_vm_price#368: aux_hard69 = 1 -> PriceProv4 = 3079
 c_order_vm_cpu#369: aux_hard69 = 1 -> ProcProv4 = 16
 c_order_vm_memory#370: aux_hard69 = 1 -> MemProv4 = 122000
 c_order_vm_storage#371: aux_hard69 = 1 -> StorageProv4 = 1000
 lc373: aux_hard70 = 1 <-> vmType4 = 10
 c_order_vm_price#373: aux_hard70 = 1 -> PriceProv4 = 1470
 c_order_vm_cpu#374: aux_hard70 = 1 -> ProcProv4 = 8
 c_order_vm_memory#375: aux_hard70 = 1 -> MemProv4 = 61000
 c_order_vm_storage#376: aux_hard70 = 1 -> StorageProv4 = 6000
 lc378: aux_hard71 = 1 <-> vmType4 = 11
 c_order_vm_price#378: aux_hard71 = 1 -> PriceProv4 = 1301
 c_order_vm_cpu#379: aux_hard71 = 1 -> ProcProv4 = 8
 c_order_vm_memory#380: aux_hard71 = 1 -> MemProv4 = 68400
 c_order_vm_storage#381: aux_hard71 = 1 -> StorageProv4 = 2000
 lc383: aux_hard72 = 1 <-> vmType4 = 12
 c_order_vm_price#383: aux_hard72 = 1 -> PriceProv4 = 1288
 c_order_vm_cpu#384: aux_hard72 = 1 -> ProcProv4 = 8
 c_order_vm_memory#385: aux_hard72 = 1 -> MemProv4 = 68400
 c_order_vm_storage#386: aux_hard72 = 1 -> StorageProv4 = 2000
 lc388: aux_hard73 = 1 <-> vmType4 = 13
 c_order_vm_price#388: aux_hard73 = 1 -> PriceProv4 = 402
 c_order_vm_cpu#389: aux_hard73 = 1 -> ProcProv4 = 4
 c_order_vm_memory#390: aux_hard73 = 1 -> MemProv4 = 15000
 c_order_vm_storage#391: aux_hard73 = 1 -> StorageProv4 = 2000
 lc393: aux_hard74 = 1 <-> vmType4 = 14
 c_order_vm_price#393: aux_hard74 = 1 -> PriceProv4 = 827
 c_order_vm_cpu#394: aux_hard74 = 1 -> ProcProv4 = 4
 c_order_vm_memory#395: aux_hard74 = 1 -> MemProv4 = 30500
 c_order_vm_storage#396: aux_hard74 = 1 -> StorageProv4 = 3000
 lc398: aux_hard75 = 1 <-> vmType4 = 15
 c_order_vm_price#398: aux_hard75 = 1 -> PriceProv4 = 379
 c_order_vm_cpu#399: aux_hard75 = 1 -> ProcProv4 = 4
 c_order_vm_memory#400: aux_hard75 = 1 -> MemProv4 = 30500
 c_order_vm_storage#401: aux_hard75 = 1 -> StorageProv4 = 1000
 lc403: aux_hard76 = 1 <-> vmType4 = 16
 c_order_vm_price#403: aux_hard76 = 1 -> PriceProv4 = 146
 c_order_vm_cpu#404: aux_hard76 = 1 -> ProcProv4 = 2
 c_order_vm_memory#405: aux_hard76 = 1 -> MemProv4 = 7500
 c_order_vm_storage#406: aux_hard76 = 1 -> StorageProv4 = 1000
 lc408: aux_hard77 = 1 <-> vmType4 = 17
 c_order_vm_price#408: aux_hard77 = 1 -> PriceProv4 = 128
 c_order_vm_cpu#409: aux_hard77 = 1 -> ProcProv4 = 2
 c_order_vm_memory#410: aux_hard77 = 1 -> MemProv4 = 3750
 c_order_vm_storage#411: aux_hard77 = 1 -> StorageProv4 = 2000
 lc413: aux_hard78 = 1 <-> vmType4 = 18
 c_order_vm_price#413: aux_hard78 = 1 -> PriceProv4 = 58
 c_order_vm_cpu#414: aux_hard78 = 1 -> ProcProv4 = 1
 c_order_vm_memory#415: aux_hard78 = 1 -> MemProv4 = 1700
 c_order_vm_storage#416: aux_hard78 = 1 -> StorageProv4 = 1000
 lc418: aux_hard79 = 1 <-> vmType4 = 19
 c_order_vm_price#418: aux_hard79 = 1 -> PriceProv4 = 93
 c_order_vm_cpu#419: aux_hard79 = 1 -> ProcProv4 = 1
 c_order_vm_memory#420: aux_hard79 = 1 -> MemProv4 = 3750
 c_order_vm_storage#421: aux_hard79 = 1 -> StorageProv4 = 1000
 lc423: aux_hard80 = 1 <-> vmType4 = 20
 c_order_vm_price#423: aux_hard80 = 1 -> PriceProv4 = 98
 c_order_vm_cpu#424: aux_hard80 = 1 -> ProcProv4 = 1
 c_order_vm_memory#425: aux_hard80 = 1 -> MemProv4 = 3750
 c_order_vm_storage#426: aux_hard80 = 1 -> StorageProv4 = 1000
 lc428: vm4 = 1 -> vmType4 >= 1
 lc429: aux_hard81 = 1 <-> vmType5 = 1
 c_order_vm_price#429: aux_hard81 = 1 -> PriceProv5 = 8403
 c_order_vm_cpu#430: aux_hard81 = 1 -> ProcProv5 = 64
 c_order_vm_memory#431: aux_hard81 = 1 -> MemProv5 = 976000
 c_order_vm_storage#432: aux_hard81 = 1 -> StorageProv5 = 1000
 lc434: aux_hard82 = 1 <-> vmType5 = 2
 c_order_vm_price#434: aux_hard82 = 1 -> PriceProv5 = 9152
 c_order_vm_cpu#435: aux_hard82 = 1 -> ProcProv5 = 64
 c_order_vm_memory#436: aux_hard82 = 1 -> MemProv5 = 488000
 c_order_vm_storage#437: aux_hard82 = 1 -> StorageProv5 = 8000
 lc439: aux_hard83 = 1 <-> vmType5 = 3
 c_order_vm_price#439: aux_hard83 = 1 -> PriceProv5 = 16000
 c_order_vm_cpu#440: aux_hard83 = 1 -> ProcProv5 = 64
 c_order_vm_memory#441: aux_hard83 = 1 -> MemProv5 = 1952
 c_order_vm_storage#442: aux_hard83 = 1 -> StorageProv5 = 1000
 lc444: aux_hard84 = 1 <-> vmType5 = 4
 c_order_vm_price#444: aux_hard84 = 1 -> PriceProv5 = 4105
 c_order_vm_cpu#445: aux_hard84 = 1 -> ProcProv5 = 32
 c_order_vm_memory#446: aux_hard84 = 1 -> MemProv5 = 244000
 c_order_vm_storage#447: aux_hard84 = 1 -> StorageProv5 = 2000
 lc449: aux_hard85 = 1 <-> vmType5 = 5
 c_order_vm_price#449: aux_hard85 = 1 -> PriceProv5 = 4576
 c_order_vm_cpu#450: aux_hard85 = 1 -> ProcProv5 = 32
 c_order_vm_memory#451: aux_hard85 = 1 -> MemProv5 = 244000
 c_order_vm_storage#452: aux_hard85 = 1 -> StorageProv5 = 4000
 lc454: aux_hard86 = 1 <-> vmType5 = 6
 c_order_vm_price#454: aux_hard86 = 1 -> PriceProv5 = 1373
 c_order_vm_cpu#455: aux_hard86 = 1 -> ProcProv5 = 16
 c_order_vm_memory#456: aux_hard86 = 1 -> MemProv5 = 122000
 c_order_vm_storage#457: aux_hard86 = 1 -> StorageProv5 = 2000
 lc459: aux_hard87 = 1 <-> vmType5 = 7
 c_order_vm_price#459: aux_hard87 = 1 -> PriceProv5 = 1430
 c_order_vm_cpu#460: aux_hard87 = 1 -> ProcProv5 = 16
 c_order_vm_memory#461: aux_hard87 = 1 -> MemProv5 = 30000
 c_order_vm_storage#462: aux_hard87 = 1 -> StorageProv5 = 2000
 lc464: aux_hard88 = 1 <-> vmType5 = 8
 c_order_vm_price#464: aux_hard88 = 1 -> PriceProv5 = 5400
 c_order_vm_cpu#465: aux_hard88 = 1 -> ProcProv5 = 17
 c_order_vm_memory#466: aux_hard88 = 1 -> MemProv5 = 117000
 c_order_vm_storage#467: aux_hard88 = 1 -> StorageProv5 = 24000
 lc469: aux_hard89 = 1 <-> vmType5 = 9
 c_order_vm_price#469: aux_hard89 = 1 -> PriceProv5 = 3079
 c_order_vm_cpu#470: aux_hard89 = 1 -> ProcProv5 = 16
 c_order_vm_memory#471: aux_hard89 = 1 -> MemProv5 = 122000
 c_order_vm_storage#472: aux_hard89 = 1 -> StorageProv5 = 1000
 lc474: aux_hard90 = 1 <-> vmType5 = 10
 c_order_vm_price#474: aux_hard90 = 1 -> PriceProv5 = 1470
 c_order_vm_cpu#475: aux_hard90 = 1 -> ProcProv5 = 8
 c_order_vm_memory#476: aux_hard90 = 1 -> MemProv5 = 61000
 c_order_vm_storage#477: aux_hard90 = 1 -> StorageProv5 = 6000
 lc479: aux_hard91 = 1 <-> vmType5 = 11
 c_order_vm_price#479: aux_hard91 = 1 -> PriceProv5 = 1301
 c_order_vm_cpu#480: aux_hard91 = 1 -> ProcProv5 = 8
 c_order_vm_memory#481: aux_hard91 = 1 -> MemProv5 = 68400
 c_order_vm_storage#482: aux_hard91 = 1 -> StorageProv5 = 2000
 lc484: aux_hard92 = 1 <-> vmType5 = 12
 c_order_vm_price#484: aux_hard92 = 1 -> PriceProv5 = 1288
 c_order_vm_cpu#485: aux_hard92 = 1 -> ProcProv5 = 8
 c_order_vm_memory#486: aux_hard92 = 1 -> MemProv5 = 68400
 c_order_vm_storage#487: aux_hard92 = 1 -> StorageProv5 = 2000
 lc489: aux_hard93 = 1 <-> vmType5 = 13
 c_order_vm_price#489: aux_hard93 = 1 -> PriceProv5 = 402
 c_order_vm_cpu#490: aux_hard93 = 1 -> ProcProv5 = 4
 c_order_vm_memory#491: aux_hard93 = 1 -> MemProv5 = 15000
 c_order_vm_storage#492: aux_hard93 = 1 -> StorageProv5 = 2000
 lc494: aux_hard94 = 1 <-> vmType5 = 14
 c_order_vm_price#494: aux_hard94 = 1 -> PriceProv5 = 827
 c_order_vm_cpu#495: aux_hard94 = 1 -> ProcProv5 = 4
 c_order_vm_memory#496: aux_hard94 = 1 -> MemProv5 = 30500
 c_order_vm_storage#497: aux_hard94 = 1 -> StorageProv5 = 3000
 lc499: aux_hard95 = 1 <-> vmType5 = 15
 c_order_vm_price#499: aux_hard95 = 1 -> PriceProv5 = 379
 c_order_vm_cpu#500: aux_hard95 = 1 -> ProcProv5 = 4
 c_order_vm_memory#501: aux_hard95 = 1 -> MemProv5 = 30500
 c_order_vm_storage#502: aux_hard95 = 1 -> StorageProv5 = 1000
 lc504: aux_hard96 = 1 <-> vmType5 = 16
 c_order_vm_price#504: aux_hard96 = 1 -> PriceProv5 = 146
 c_order_vm_cpu#505: aux_hard96 = 1 -> ProcProv5 = 2
 c_order_vm_memory#506: aux_hard96 = 1 -> MemProv5 = 7500
 c_order_vm_storage#507: aux_hard96 = 1 -> StorageProv5 = 1000
 lc509: aux_hard97 = 1 <-> vmType5 = 17
 c_order_vm_price#509: aux_hard97 = 1 -> PriceProv5 = 128
 c_order_vm_cpu#510: aux_hard97 = 1 -> ProcProv5 = 2
 c_order_vm_memory#511: aux_hard97 = 1 -> MemProv5 = 3750
 c_order_vm_storage#512: aux_hard97 = 1 -> StorageProv5 = 2000
 lc514: aux_hard98 = 1 <-> vmType5 = 18
 c_order_vm_price#514: aux_hard98 = 1 -> PriceProv5 = 58
 c_order_vm_cpu#515: aux_hard98 = 1 -> ProcProv5 = 1
 c_order_vm_memory#516: aux_hard98 = 1 -> MemProv5 = 1700
 c_order_vm_storage#517: aux_hard98 = 1 -> StorageProv5 = 1000
 lc519: aux_hard99 = 1 <-> vmType5 = 19
 c_order_vm_price#519: aux_hard99 = 1 -> PriceProv5 = 93
 c_order_vm_cpu#520: aux_hard99 = 1 -> ProcProv5 = 1
 c_order_vm_memory#521: aux_hard99 = 1 -> MemProv5 = 3750
 c_order_vm_storage#522: aux_hard99 = 1 -> StorageProv5 = 1000
 lc524: aux_hard100 = 1 <-> vmType5 = 20
 c_order_vm_price#524: aux_hard100 = 1 -> PriceProv5 = 98
 c_order_vm_cpu#525: aux_hard100 = 1 -> ProcProv5 = 1
 c_order_vm_memory#526: aux_hard100 = 1 -> MemProv5 = 3750
 c_order_vm_storage#527: aux_hard100 = 1 -> StorageProv5 = 1000
 lc529: vm5 = 1 -> vmType5 >= 1

Bounds
 0 <= vm1 <= 1
 0 <= vm2 <= 1
 0 <= vm3 <= 1
 0 <= vm4 <= 1
 0 <= vm5 <= 1
 0 <= C1_VM1 <= 1
 0 <= C1_VM2 <= 1
 0 <= C1_VM3 <= 1
 0 <= C1_VM4 <= 1
 0 <= C1_VM5 <= 1
 0 <= C2_VM1 <= 1
 0 <= C2_VM2 <= 1
 0 <= C2_VM3 <= 1
 0 <= C2_VM4 <= 1
 0 <= C2_VM5 <= 1
 0 <= C3_VM1 <= 1
 0 <= C3_VM2 <= 1
 0 <= C3_VM3 <= 1
 0 <= C3_VM4 <= 1
 0 <= C3_VM5 <= 1
 0 <= C4_VM1 <= 1
 0 <= C4_VM2 <= 1
 0 <= C4_VM3 <= 1
 0 <= C4_VM4 <= 1
 0 <= C4_VM5 <= 1
 0 <= C5_VM1 <= 1
 0 <= C5_VM2 <= 1
 0 <= C5_VM3 <= 1
 0 <= C5_VM4 <= 1
 0 <= C5_VM5 <= 1
       vmType1 <= 20
       vmType2 <= 20
       vmType3 <= 20
       vmType4 <= 20
       vmType5 <= 20
 1 <= ProcProv1 <= 64
 1 <= ProcProv2 <= 64
 1 <= ProcProv3 <= 64
 1 <= ProcProv4 <= 64
 1 <= ProcProv5 <= 64
 1700 <= MemProv1 <= 976000
 1700 <= MemProv2 <= 976000
 1700 <= MemProv3 <= 976000
 1700 <= MemProv4 <= 976000
 1700 <= MemProv5 <= 976000
 1000 <= StorageProv1 <= 24000
 1000 <= StorageProv2 <= 24000
 1000 <= StorageProv3 <= 24000
 1000 <= StorageProv4 <= 24000
 1000 <= StorageProv5 <= 24000
       PriceProv1 <= 16000
       PriceProv2 <= 16000
       PriceProv3 <= 16000
       PriceProv4 <= 16000
       PriceProv5 <= 16000
 0 <= lex_VM3_comp0 <= 1
 0 <= lex_VM3_comp1 <= 1
       x58 Free
 0 <= _bool#1 <= 1
 0 <= _and59 <= 1
 0 <= lex_VM3_comp2 <= 1
       x62 Free
 0 <= _bool#2 <= 1
 0 <= _and63 <= 1
 0 <= lex_VM3_comp3 <= 1
       x66 Free
 0 <= _bool#3 <= 1
 0 <= _and67 <= 1
 0 <= lex_VM3_comp4 <= 1
       x70 Free
 0 <= _bool#4 <= 1
 0 <= _and71 <= 1
 0 <= aux_hard1 <= 1
 0 <= aux_hard2 <= 1
 0 <= aux_hard3 <= 1
 0 <= aux_hard4 <= 1
 0 <= aux_hard5 <= 1
 0 <= aux_hard6 <= 1
 0 <= aux_hard7 <= 1
 0 <= aux_hard8 <= 1
 0 <= aux_hard9 <= 1
 0 <= aux_hard10 <= 1
 0 <= aux_hard11 <= 1
 0 <= aux_hard12 <= 1
 0 <= aux_hard13 <= 1
 0 <= aux_hard14 <= 1
 0 <= aux_hard15 <= 1
 0 <= aux_hard16 <= 1
 0 <= aux_hard17 <= 1
 0 <= aux_hard18 <= 1
 0 <= aux_hard19 <= 1
 0 <= aux_hard20 <= 1
 0 <= aux_hard21 <= 1
 0 <= aux_hard22 <= 1
 0 <= aux_hard23 <= 1
 0 <= aux_hard24 <= 1
 0 <= aux_hard25 <= 1
 0 <= aux_hard26 <= 1
 0 <= aux_hard27 <= 1
 0 <= aux_hard28 <= 1
 0 <= aux_hard29 <= 1
 0 <= aux_hard30 <= 1
 0 <= aux_hard31 <= 1
 0 <= aux_hard32 <= 1
 0 <= aux_hard33 <= 1
 0 <= aux_hard34 <= 1
 0 <= aux_hard35 <= 1
 0 <= aux_hard36 <= 1
 0 <= aux_hard37 <= 1
 0 <= aux_hard38 <= 1
 0 <= aux_hard39 <= 1
 0 <= aux_hard40 <= 1
 0 <= aux_hard41 <= 1
 0 <= aux_hard42 <= 1
 0 <= aux_hard43 <= 1
 0 <= aux_hard44 <= 1
 0 <= aux_hard45 <= 1
 0 <= aux_hard46 <= 1
 0 <= aux_hard47 <= 1
 0 <= aux_hard48 <= 1
 0 <= aux_hard49 <= 1
 0 <= aux_hard50 <= 1
 0 <= aux_hard51 <= 1
 0 <= aux_hard52 <= 1
 0 <= aux_hard53 <= 1
 0 <= aux_hard54 <= 1
 0 <= aux_hard55 <= 1
 0 <= aux_hard56 <= 1
 0 <= aux_hard57 <= 1
 0 <= aux_hard58 <= 1
 0 <= aux_hard59 <= 1
 0 <= aux_hard60 <= 1
 0 <= aux_hard61 <= 1
 0 <= aux_hard62 <= 1
 0 <= aux_hard63 <= 1
 0 <= aux_hard64 <= 1
 0 <= aux_hard65 <= 1
 0 <= aux_hard66 <= 1
 0 <= aux_hard67 <= 1
 0 <= aux_hard68 <= 1
 0 <= aux_hard69 <= 1
 0 <= aux_hard70 <= 1
 0 <= aux_hard71 <= 1
 0 <= aux_hard72 <= 1
 0 <= aux_hard73 <= 1
 0 <= aux_hard74 <= 1
 0 <= aux_hard75 <= 1
 0 <= aux_hard76 <= 1
 0 <= aux_hard77 <= 1
 0 <= aux_hard78 <= 1
 0 <= aux_hard79 <= 1
 0 <= aux_hard80 <= 1
 0 <= aux_hard81 <= 1
 0 <= aux_hard82 <= 1
 0 <= aux_hard83 <= 1
 0 <= aux_hard84 <= 1
 0 <= aux_hard85 <= 1
 0 <= aux_hard86 <= 1
 0 <= aux_hard87 <= 1
 0 <= aux_hard88 <= 1
 0 <= aux_hard89 <= 1
 0 <= aux_hard90 <= 1
 0 <= aux_hard91 <= 1
 0 <= aux_hard92 <= 1
 0 <= aux_hard93 <= 1
 0 <= aux_hard94 <= 1
 0 <= aux_hard95 <= 1
 0 <= aux_hard96 <= 1
 0 <= aux_hard97 <= 1
 0 <= aux_hard98 <= 1
 0 <= aux_hard99 <= 1
 0 <= aux_hard100 <= 1

Binaries
 vm1 vm2 vm3 vm4 vm5 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C2_VM1 C2_VM2 C2_VM3
 C2_VM4 C2_VM5 C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C4_VM1 C4_VM2 C4_VM3 C4_VM4
 C4_VM5 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 lex_VM3_comp0 lex_VM3_comp1 _bool#1
 _and59 lex_VM3_comp2 _bool#2 _and63 lex_VM3_comp3 _bool#3 _and67 lex_VM3_comp4
 _bool#4 _and71 aux_hard1 aux_hard2 aux_hard3 aux_hard4 aux_hard5 aux_hard6
 aux_hard7 aux_hard8 aux_hard9 aux_hard10 aux_hard11 aux_hard12 aux_hard13
 aux_hard14 aux_hard15 aux_hard16 aux_hard17 aux_hard18 aux_hard19 aux_hard20
 aux_hard21 aux_hard22 aux_hard23 aux_hard24 aux_hard25 aux_hard26 aux_hard27
 aux_hard28 aux_hard29 aux_hard30 aux_hard31 aux_hard32 aux_hard33 aux_hard34
 aux_hard35 aux_hard36 aux_hard37 aux_hard38 aux_hard39 aux_hard40 aux_hard41
 aux_hard42 aux_hard43 aux_hard44 aux_hard45 aux_hard46 aux_hard47 aux_hard48
 aux_hard49 aux_hard50 aux_hard51 aux_hard52 aux_hard53 aux_hard54 aux_hard55
 aux_hard56 aux_hard57 aux_hard58 aux_hard59 aux_hard60 aux_hard61 aux_hard62
 aux_hard63 aux_hard64 aux_hard65 aux_hard66 aux_hard67 aux_hard68 aux_hard69
 aux_hard70 aux_hard71 aux_hard72 aux_hard73 aux_hard74 aux_hard75 aux_hard76
 aux_hard77 aux_hard78 aux_hard79 aux_hard80 aux_hard81 aux_hard82 aux_hard83
 aux_hard84 aux_hard85 aux_hard86 aux_hard87 aux_hard88 aux_hard89 aux_hard90
 aux_hard91 aux_hard92 aux_hard93 aux_hard94 aux_hard95 aux_hard96 aux_hard97
 aux_hard98 aux_hard99 aux_hard100

Generals
 vmType1 vmType2 vmType3 vmType4 vmType5 ProcProv1 ProcProv2 ProcProv3 ProcProv4
 ProcProv5 MemProv1 MemProv2 MemProv3 MemProv4 MemProv5 StorageProv1
 StorageProv2 StorageProv3 StorageProv4 StorageProv5 PriceProv1 PriceProv2
 PriceProv3 PriceProv4 PriceProv5
End
