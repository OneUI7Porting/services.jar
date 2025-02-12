.class public interface abstract Landroid/hardware/usb/V1_0/IUsb;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsb;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "android.hardware.usb@1.0::IUsb"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    instance-of v3, v2, Landroid/hardware/usb/V1_0/IUsb;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    check-cast v2, Landroid/hardware/usb/V1_0/IUsb;

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_1
    new-instance v2, Landroid/hardware/usb/V1_0/IUsb$Proxy;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v2, Landroid/hardware/usb/V1_0/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/usb/V1_0/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    return-object v2

    .line 54
    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract queryPortStatus()V
.end method

.method public abstract setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V
.end method

.method public abstract switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
.end method
