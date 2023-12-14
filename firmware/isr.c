// This file is Copyright (c) 2020 Florent Kermarrec <florent@enjoy-digital.fr>
// License: BSD

#include <csr.h>
#include <soc.h>
#include <irq_vex.h>
#include <user_uart.h>
#include <defs.h>

extern int uart_read();
extern char uart_read_char();
extern char uart_write_char();
extern int uart_write();

void isr(void);

#ifdef CONFIG_CPU_HAS_INTERRUPT

#ifdef USER_PROJ_IRQ0_EN
uint32_t counter = 0xFFFF0000;
#endif

void isr(void)
{

#ifndef USER_PROJ_IRQ0_EN//如果未定義

    irq_setmask(0);


#else
    uint32_t irqs = irq_pending() & irq_getmask();//pending & mask != 0
    int buf;

    if ( irqs & (1 << USER_IRQ_0_INTERRUPT)) {//shift2, deal with irq[0]=1
        user_irq_0_ev_pending_write(1); //Clear Interrupt Pending Event
        buf = uart_read();
        uart_write(buf);
    }

    uint16_t mprj_to_uart0;
    uint8_t mprj_to_uart1, mprj_to_uart2;


    if ( irqs & (1 << USER_IRQ_1_INTERRUPT)) {//shift3, deal with irq[1]=1
        user_irq_1_ev_pending_write(1); //Clear Interrupt Pending Event
        mprj_to_uart0 = (reg_la1_data >> 16);
        mprj_to_uart1 = mprj_to_uart0 >> 8;
        mprj_to_uart2 = mprj_to_uart0 ;

        uart_write(mprj_to_uart1);
        uart_write(mprj_to_uart2);
        uart_write(0x0a);
    }

    
    // char buf;
    // if ( irqs & (1 << USER_IRQ_0_INTERRUPT)) {
    //     user_irq_0_ev_pending_write(1); //Clear Interrupt Pending Event
    //     buf = uart_read_char();
    //     uart_write_char(buf);
    // }   

#endif

    return;

}

#else

void isr(void){};

#endif
