-- CreateTable
CREATE TABLE `Refer` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `refreeName` VARCHAR(191) NOT NULL,
    `refreeEmail` VARCHAR(191) NOT NULL,
    `refreePhone` VARCHAR(191) NOT NULL,
    `referrerName` VARCHAR(191) NOT NULL,
    `referrerEmail` VARCHAR(191) NOT NULL,
    `referrerPhone` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Refer_refreeEmail_key`(`refreeEmail`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
