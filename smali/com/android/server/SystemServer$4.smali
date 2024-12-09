.class public final Lcom/android/server/SystemServer$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/SystemServer$4;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/SystemServer$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/android/server/enterprise/mpos/MPOSService;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/mpos/MPOSService;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const-string p0, "SystemServer"

    .line 13
    .line 14
    const-string/jumbo v0, "before SemAuthnrService adding"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    new-instance p0, Lcom/android/server/blockchain/BlockchainTZService;

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/blockchain/IBlockchainManager$Stub;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 39
    .line 40
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const-string v0, "BlockchainTZService"

    .line 45
    .line 46
    const-string v1, "BlockchainTZService() called"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    sput-object p1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_2
    new-instance p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_3
    new-instance p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_4
    new-instance p0, Lcom/android/server/emailksproxy/EmailKeystoreService;

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_5
    new-instance p0, Lcom/android/server/IcccManagerService;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/android/server/IcccManagerService$1;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "IcccManagerService"

    .line 90
    .line 91
    const-string v2, "Start IcccManagerService"

    .line 92
    .line 93
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const-string/jumbo p1, "com.samsung.intent.action.BCS_REQUEST"

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    const/4 v2, 0x2

    .line 108
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
