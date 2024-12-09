.class public final synthetic Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

.field public final synthetic f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "some"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 18
    .line 19
    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    const-string/jumbo v5, "total"

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const-string/jumbo v7, "avg10"

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-ne p0, v3, :cond_0

    .line 32
    .line 33
    invoke-static {v6, p1, v7}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ne p0, v2, :cond_3

    .line 42
    .line 43
    invoke-static {v4, p1, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    iput-wide p0, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v1, "full"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    if-ne p0, v3, :cond_2

    .line 64
    .line 65
    invoke-static {v6, p1, v7}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-ne p0, v2, :cond_3

    .line 74
    .line 75
    invoke-static {v4, p1, v5}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide p0

    .line 83
    iput-wide p0, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    .line 84
    .line 85
    :cond_3
    :goto_0
    return-void
.end method
