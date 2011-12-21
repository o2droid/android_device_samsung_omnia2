#ifndef __LIGHT_H__
#define __LIGHT_H__

/* IOCTL for light sensor */
#define KIONIX_ISL_IOC_MAGIC		'K'                                 
#define KIONIX_ISL_IOCTL_GET_ENABLED	_IOR(KIONIX_ISL_IOC_MAGIC, 0x1, int)            
#define KIONIX_ISL_IOCTL_ENABLE		_IOW(KIONIX_ISL_IOC_MAGIC, 0x2, int)            
#define KIONIX_ISL_PRINT_ON		_IO(KIONIX_ISL_IOC_MAGIC, 0x3)      
#define KIONIX_ISL_PRINT_OFF		_IO(KIONIX_ISL_IOC_MAGIC, 0x4)      

#endif
