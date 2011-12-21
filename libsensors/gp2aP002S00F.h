#ifndef __GP2A_H__
#define __GP2A_H__

/* IOCTL for proximity sensor */
#define SHARP_GP2AP_IOC_MAGIC		'C'                                 
#define SHARP_GP2AP_IOCTL_GET_ENABLED	_IOR(SHARP_GP2AP_IOC_MAGIC, 0x1, int)            
#define SHARP_GP2AP_IOCTL_ENABLE	_IOW(SHARP_GP2AP_IOC_MAGIC, 0x2, int)            
#define SHARP_GP2AP_PRINT_PROX_VALUE	_IO(SHARP_GP2AP_IOC_MAGIC, 0x3)      

#endif
