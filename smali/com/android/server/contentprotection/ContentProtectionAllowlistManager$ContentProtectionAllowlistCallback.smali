.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;
.super Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final setAllowlist(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
