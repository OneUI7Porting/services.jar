.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyCaptivePortalDataChanged:I = 0x9

.field static final TRANSACTION_notifyDataStallSuspected:I = 0x8

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyNetworkTestedWithExtras:I = 0x7

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_notifyProbeStatusChanged:I = 0x6

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/INetworkMonitorCallbacks;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 27
    .line 28
    const-string v1, "-1"

    .line 29
    .line 30
    iput-object v1, v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    sget-object p1, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/net/CaptivePortalData;

    .line 67
    .line 68
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_1
    sget-object p1, Landroid/net/DataStallReportParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/net/DataStallReportParcelable;

    .line 79
    .line 80
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_2
    sget-object p1, Landroid/net/NetworkTestResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/net/NetworkTestResultParcelable;

    .line 91
    .line 92
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyProbeStatusChanged(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->hideProvisioningNotification()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_6
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    .line 131
    .line 132
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTested(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return v2

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
