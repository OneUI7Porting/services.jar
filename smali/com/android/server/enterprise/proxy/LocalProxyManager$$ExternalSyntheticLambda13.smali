.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$3:Landroid/net/ProxyInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$2:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;->f$3:Landroid/net/ProxyInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_4

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 44
    .line 45
    const-string v6, "\""

    .line 46
    .line 47
    const-string v7, ""

    .line 48
    .line 49
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 61
    .line 62
    check-cast v5, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 84
    .line 85
    :goto_1
    if-eqz v2, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const/4 p0, 0x0

    .line 89
    :goto_2
    invoke-virtual {v3, v5}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p0}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;

    .line 99
    .line 100
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    return-void
.end method
