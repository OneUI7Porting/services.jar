.class public final Lcom/android/server/SystemConfig$PermissionEntry;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public gids:[I

.field public final name:Ljava/lang/String;

.field public final perUser:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    .line 7
    .line 8
    return-void
.end method
