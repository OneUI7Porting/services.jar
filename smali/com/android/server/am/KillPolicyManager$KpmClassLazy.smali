.class public abstract Lcom/android/server/am/KillPolicyManager$KpmClassLazy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/KillPolicyManager;

.field public static isinitKpmClass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/am/KillPolicyManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    .line 10
    .line 11
    return-void
.end method
