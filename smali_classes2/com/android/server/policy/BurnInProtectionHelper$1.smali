.class public final Lcom/android/server/policy/BurnInProtectionHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/BurnInProtectionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/BurnInProtectionHelper$1;->this$0:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    .line 4
    .line 5
    .line 6
    return-void
.end method