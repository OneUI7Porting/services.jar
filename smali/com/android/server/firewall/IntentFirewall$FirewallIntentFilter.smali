.class public final Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 5
    .line 6
    return-void
.end method