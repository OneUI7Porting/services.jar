.class public Lcom/android/server/updates/IntentFirewallInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "metadata/"

    .line 8
    .line 9
    .line 10
    const-string v2, "gservices.version"

    .line 11
    .line 12
    const-string v3, "ifw.xml"

    .line 13
    .line 14
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
