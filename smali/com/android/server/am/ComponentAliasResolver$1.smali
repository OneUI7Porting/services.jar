.class public final Lcom/android/server/am/ComponentAliasResolver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ComponentAliasResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ComponentAliasResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method