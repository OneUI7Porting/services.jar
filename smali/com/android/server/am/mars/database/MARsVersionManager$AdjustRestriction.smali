.class public final Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final action:Ljava/lang/String;

.field public final actionMatchType:Ljava/lang/String;

.field public final callee:Ljava/lang/String;

.field public final caller:Ljava/lang/String;

.field public final isAllowed:Ljava/lang/String;

.field public final restrictionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdjustRestriction: restrictionType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isAllowed="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", callee="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", caller="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", actionMatchType="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", action="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
