.class public final Lcom/samsung/android/server/contextengine/SemContextEngineServiceImpl;
.super Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p0, "ContextEngineManager"

    .line 5
    .line 6
    const-string p1, "create"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final setDefault()V
    .locals 0

    .line 1
    return-void
.end method
