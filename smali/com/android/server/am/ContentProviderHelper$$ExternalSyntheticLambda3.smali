.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ContentProviderConnection;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
