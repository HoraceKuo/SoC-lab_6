#ifndef __IRQ_H
#define __IRQ_H

#ifdef __cplusplus
extern "C" {
#endif

#include <system.h>
#include <csr.h>
#include <soc.h>

static inline unsigned int irq_getie(void)
{
	return (csrr(mstatus) & CSR_MSTATUS_MIE) != 0;//return 1 ->  Machine Interrupt Enable為1
}

static inline void irq_setie(unsigned int ie)
{
	if(ie) csrs(mstatus,CSR_MSTATUS_MIE); else csrc(mstatus,CSR_MSTATUS_MIE);//使用 csrs 指令設置 mstatus CSR 的 MIE 位//csrc清除
}

static inline unsigned int irq_getmask(void)//獲取當前中斷屏蔽的狀態
{
	unsigned int mask;//priority mask
	asm volatile ("csrr %0, %1" : "=r"(mask) : "i"(CSR_IRQ_MASK));
	return mask;
}

static inline void irq_setmask(unsigned int mask)
{
	asm volatile ("csrw %0, %1" :: "i"(CSR_IRQ_MASK), "r"(mask));
}

static inline unsigned int irq_pending(void)
{
	unsigned int pending;
	asm volatile ("csrr %0, %1" : "=r"(pending) : "i"(CSR_IRQ_PENDING));
	return pending;
}

#ifdef __cplusplus
}
#endif

#endif /* __IRQ_H */
