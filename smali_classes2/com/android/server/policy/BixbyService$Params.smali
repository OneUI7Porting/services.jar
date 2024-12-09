.class public final Lcom/android/server/policy/BixbyService$Params;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public doublePress:Z

.field public final event:Landroid/view/KeyEvent;

.field public final interactive:Z

.field public isPowerCombination:Z

.field public longPress:Z

.field public showToast:Z


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    .line 14
    iput-object p1, p0, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    .line 15
    iput-boolean p2, p0, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/BixbyService$Params;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    iget-boolean v1, p1, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    iget-boolean v2, p1, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iget-boolean v3, p1, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    iget-boolean v4, p1, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    .line 4
    iget-boolean p1, p1, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    iput-boolean p1, p0, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    .line 7
    iput-boolean v3, p0, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    .line 8
    iput-boolean v4, p0, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    return-void
.end method
