.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/UserLevelState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/UserLevelState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 8
    .line 9
    const/16 v2, 0x172

    .line 10
    .line 11
    invoke-static {v2, v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method