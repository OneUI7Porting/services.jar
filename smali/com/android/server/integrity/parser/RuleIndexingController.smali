.class public final Lcom/android/server/integrity/parser/RuleIndexingController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

.field public static sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

.field public static sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;


# direct methods
.method public static getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p0, v2, v1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v2, "END_KEY"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v1, 0x2

    .line 59
    if-lt p0, v1, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "Indexing file is corrupt."

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificates()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v2, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-static {v2, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 50
    .line 51
    sget-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    const-string v2, "START_KEY"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sget-object v2, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    const-string v3, "END_KEY"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-direct {p0, v1, v2}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public static searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3, p1, v1, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(ILjava/lang/String;ILjava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public static searchKeysRangeContainingKey(ILjava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-le p2, p0, :cond_2

    .line 2
    .line 3
    sub-int v0, p2, p0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    add-int/2addr v0, p0

    .line 32
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ltz v1, :cond_1

    .line 43
    .line 44
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(ILjava/lang/String;ILjava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(ILjava/lang/String;ILjava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "Indexing file is corrupt."

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method
