/*
  Warnings:

  - You are about to drop the column `referrerPhone` on the `refer` table. All the data in the column will be lost.
  - You are about to drop the column `refreePhone` on the `refer` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `refer` DROP COLUMN `referrerPhone`,
    DROP COLUMN `refreePhone`;
