    Для хранения медиафайлов логично будет использовать HDD, так как объем данных значительный, а данных много.
    Для всего остального подойдет SSD(nVME), так как они быстрее, чем HDD, и поддерживают больше операций ввода-вывода, чем SSD(SATA).
    
    Посты(медиа):
    Capacity: 11.5 MB/s * 86400 * 365 = 362TB
    Traffic_per_second: 4.631 GB/s
    IOps: 473
    HDD
        Disks_for_capacity: 362TB / 32 = 12
        Disks_for_throughput: 4.631GB/s / 100MB/s = 46.3
        Disks_for_iops = 473 / 100 = 4.73
        Disks = 47

    Посты(метаданные):
    Capacity: 0.02 MB/s * 86400 * 365 = 630GB
    Traffic_per_second: 10.52 MB/s
    IOps: 473
    SSD(nVME):
        Disks_for_capacity: 630GB / 30TB = 0.02
        Disks_for_throughput: 11.5MB/s / 3000MB/s = 0.003
        Disks_for_iops = 473 / 10000 = 0.04
        Disks = 1
    
    Реакции:
    Capacity: 0.05 MB/s * 86400 * 365 = 1.5TB
    Traffic_per_second: 0.13 MB/s
    IOps: 2762
    SSD(nVME):
        Disks_for_capacity: 1.5TB / 30TB = 0.05
        Disks_for_throughput: 0.13MB/s / 3000MB/s = 0.00004
        Disks_for_iops = 2762 / 10000 = 0.27
        Disks = 1

    Комментарии:
    Capacity: 0.04 MB/s * 86400 * 365 = 1.2TB
    Traffic_per_second: 0.52 MB/s
    IOps: 230
    SSD(nVME):
        Disks_for_capacity: 1.2TB / 30TB = 0.04
        Disks_for_throughput: 0.52MB/s / 3000MB/s = 0.0001
        Disks_for_iops = 230 / 10000 = 0.023
        Disks = 1
    
    Итого суммарно нам потребуется 47 HDD дисков и 1 SSD(nVME) диск.