.class public interface abstract Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public abstract enableCec(Z)V
.end method

.method public abstract enableSystemCecControl(Z)V
.end method

.method public abstract enableWakeupByOtp(Z)V
.end method

.method public abstract nativeAddLogicalAddress(I)I
.end method

.method public abstract nativeClearLogicalAddress()V
.end method

.method public abstract nativeEnableAudioReturnChannel(IZ)V
.end method

.method public abstract nativeGetHpdSignalType(I)I
.end method

.method public abstract nativeGetPhysicalAddress()I
.end method

.method public abstract nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method public abstract nativeGetVendorId()I
.end method

.method public abstract nativeGetVersion()I
.end method

.method public abstract nativeInit()Ljava/lang/String;
.end method

.method public abstract nativeIsConnected(I)Z
.end method

.method public abstract nativeSendCecCommand(II[B)I
.end method

.method public abstract nativeSetHpdSignalType(II)V
.end method

.method public abstract nativeSetLanguage(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
.end method
