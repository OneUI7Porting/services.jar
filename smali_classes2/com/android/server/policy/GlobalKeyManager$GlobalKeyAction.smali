.class public final Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mDispatchWhenNonInteractive:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 15
    .line 16
    return-void
.end method
