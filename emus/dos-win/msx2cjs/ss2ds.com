�	���!�� �C
�t2�C��߀�At��Bt��Z�	�!�L�!� ��A�� � ��WR�Z_sP� �OXu�m�̠$<�u�$��A�f t%���<�t��몀>)�~u��$����A uۿ � � ���WR�Z_sP� �XOu�����f����`����	�!� L�!�	�!��!P�>�	�!X$�<Y�� SS2DS: Make 3.5" single sided MSX disks read/writable in MS-DOS
  (c) 1994 CompuJunks; All rights reserved
$� Usage: SS2DS <drivename>

  The MSX has support for a single sided 9 sectors/track, 80 tracks disk format
  that MS-DOS hasn't. Normally you can't read/write these disks in MS-DOS
  because MS-DOS doesn't agree about the F8 identification byte.
  This program writes F9 as the identification byte in the boot sector, but
  leaves the number of sides to 1. Now you can read/write the disks in MS-DOS.
  The MSX however then thinks it's a double sided disk. Using this program again  on the disk will restore the F8 byte.
$! Error reading boot sector (sector 0)
$! Error writing updated boot sector (sector 0)
$! Disk is write protected... boot sector not updated
$! Disk is not single sided (F8) or "fake" double sided (F9) disk
$� This is a single sided MSX disk
  Want me to make it read/writable in MS-DOS (Y/N) ?$� This disk has a double sided identification byte but is single sided.
  You probably ran SS2DS on this disk before. Proceeding now will restore the
  disk with it's MSX-only single sided identification byte.
  Proceed (Y/N)$! This is a regular double sided disk
$� Run SS2DS again to restore the disk to a single sided MSX format
$! Aborted...
$� Disk updated...
$