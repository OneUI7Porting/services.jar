.class public final Lcom/android/server/am/AppNotRespondingDialog$Data;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final aInfo:Landroid/content/pm/ApplicationInfo;

.field public final aboveSystem:Z

.field public final isContinuousAnr:Z

.field public final proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->isContinuousAnr:Z

    .line 11
    .line 12
    return-void
.end method