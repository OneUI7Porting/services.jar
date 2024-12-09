.class public interface abstract Lcom/android/server/usb/hal/port/UsbPortHal;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
.end method

.method public abstract enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
.end method

.method public abstract enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract getUsbHalVersion()I
.end method

.method public abstract queryPortStatus(J)V
.end method

.method public abstract resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract switchDataRole(ILjava/lang/String;J)V
.end method

.method public abstract switchMode(ILjava/lang/String;J)V
.end method

.method public abstract switchPowerRole(ILjava/lang/String;J)V
.end method

.method public abstract systemReady()V
.end method
