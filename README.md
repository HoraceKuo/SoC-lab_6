# WorkLoad Optimize SOC (WLOS) Baseline

在我們的vivado/jupyter notebook資料夾中，包含了三種驗證方式
1.regular是一般的運行結果，看不到firware執行內容只能知道運行結束
2.verify為將firmware運行速度降低以讀取到mprj data驗證結果的方式
3.verify_new是利用uart傳送mprj中的checkbit資訊到PS side來驗證的方式

### Simulation for matrix multiplication
```sh
cd ~/caravel-soc_fpga-lab/lab-wlos_baseline/testbench/counter_la_mm
source run_clean
source run_sim
```

### Simulation for FIR
```sh
cd ~/caravel-soc_fpga-lab/lab-wlos_baseline/testbench/counter_la_fir
source run_clean
source run_sim
```

### Simulation for qsort
```sh
cd ~/caravel-soc_fpga-lab/lab-wlos_baseline/testbench/counter_la_qs
source run_clean
source run_sim
```

### Simulation for uart
```sh
cd ~/caravel-soc_fpga-lab/lab-wlos_baseline/testbench/uart
source run_clean
source run_sim
```

## Verification with Vivado
### Synthesis and Generate bitstream
```sh
cd ~/caravel-soc_fpga-lab/lab-wlos_baseline/vivado
source run_vivado
```


