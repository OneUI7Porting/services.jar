.class public final Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCarrierConfigChanged(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mEventChanges:Landroid/util/LocalLog;

    .line 6
    .line 7
    const-string v1, "[CarrierConfig] Changed on slot "

    .line 8
    .line 9
    const-string v2, " subId="

    .line 10
    .line 11
    const-string v3, " carrerId="

    .line 12
    .line 13
    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p3, " specificCarrierId="

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 38
    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 41
    .line 42
    iget-object p3, p3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 43
    .line 44
    iget-object p3, p3, Lcom/android/server/connectivity/Vpn;->mCachedCarrierConfigInfoPerSubId:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 54
    .line 55
    if-eq p2, p0, :cond_0

    .line 56
    .line 57
    monitor-exit p1

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->mActiveNetwork:Landroid/net/Network;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p1

    .line 67
    return-void

    .line 68
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method
