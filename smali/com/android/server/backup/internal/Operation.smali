.class public final Lcom/android/server/backup/internal/Operation;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final callback:Lcom/android/server/backup/BackupRestoreTask;

.field public state:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupRestoreTask;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/backup/internal/Operation;->type:I

    .line 10
    .line 11
    return-void
.end method
