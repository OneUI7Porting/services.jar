.class public final Lcom/android/server/asks/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public format:Ljava/lang/String;

.field public hashCode:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field public versionType:I


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    .line 4
    .line 5
    const v1, 0x65837583

    .line 6
    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    return v3

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    return v2

    .line 44
    :cond_3
    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method
