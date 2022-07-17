#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>

int ft_vfprintf(const char *format, va_list ap);

int ft_printf(const char *format, ...)
{
    va_list ap;
    int     rtn;

    va_start(ap, format);
    rtn = ft_ftprintf(format, ap);
    va_end(ap);
    return (rtn);
}
