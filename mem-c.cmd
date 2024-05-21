@ECHO OFF

GOTO //////////////////////////////////////////////////


W:\>wmic MEMORYCHIP get BankLabel, Capacity, DeviceLocator, MemoryType, Speed, TypeDetail

BankLabel  Capacity    DeviceLocator         MemoryType  Speed  TypeDetail
BANK 0     8589934592  Bottom-Slot 1(left)   0           2400   16512
BANK 2     8589934592  Bottom-Slot 2(right)  0           2400   16512

:::::::::::  MemoryType=0 (unable to determine type DDR3, DDR4)

W:\>wmic MEMORYCHIP list full

:::::::::::

://////////////////////////////////////////////////

wmic MEMORYCHIP get BankLabel, Capacity, DeviceLocator, MemoryType, Speed, TypeDetail

