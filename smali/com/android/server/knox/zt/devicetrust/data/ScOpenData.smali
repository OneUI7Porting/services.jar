.class public final Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
.super Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final flags:I

.field public final mode:I

.field public final ret:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJJJJLjava/lang/String;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move-wide/from16 v2, p7

    .line 5
    .line 6
    move-wide/from16 v4, p9

    .line 7
    .line 8
    move-wide/from16 v6, p11

    .line 9
    .line 10
    move-object/from16 v8, p13

    .line 11
    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;-><init>(IJJJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p2

    .line 16
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 17
    .line 18
    move v0, p3

    .line 19
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 20
    .line 21
    move v0, p4

    .line 22
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 23
    .line 24
    move-wide v0, p5

    .line 25
    iput-wide v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    .line 8
    const-string/jumbo v3, "when"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 15
    .line 16
    const-string/jumbo v2, "what"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "pid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 33
    .line 34
    long-to-int v1, v1

    .line 35
    const-string/jumbo v2, "uid"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v2, "comm"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "filename"

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "flags"

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "mode"

    .line 66
    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "ret"

    .line 74
    .line 75
    .line 76
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v1, "when"

    .line 7
    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "what"

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "pid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "uid"

    .line 33
    .line 34
    .line 35
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 36
    .line 37
    long-to-int v2, v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "comm"

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "filename"

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "flags"

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "mode"

    .line 66
    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "ret"

    .line 74
    .line 75
    .line 76
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 13

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 12
    .line 13
    long-to-int v4, v4

    .line 14
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v6, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 17
    .line 18
    iget v7, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 19
    .line 20
    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 21
    .line 22
    iget-wide v9, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 23
    .line 24
    const/4 v11, 0x1

    .line 25
    invoke-virtual {p0, v11}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo v11, "when : "

    .line 30
    .line 31
    .line 32
    const-string v12, " | what : "

    .line 33
    .line 34
    invoke-static {v2, v11, v0, v1, v12}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, " | pid : "

    .line 39
    .line 40
    const-string v2, " | uid : "

    .line 41
    .line 42
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    const-string v1, " | comm : "

    .line 46
    .line 47
    const-string v2, " | filename : "

    .line 48
    .line 49
    invoke-static {v0, v1, v5, v2, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, " | flags : "

    .line 53
    .line 54
    const-string v2, " | mode : "

    .line 55
    .line 56
    invoke-static {v7, v8, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    const-string v1, " | ret : "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "when"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "what"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v2, "pid"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 45
    .line 46
    long-to-int v1, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string/jumbo v2, "uid"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 58
    .line 59
    const-string/jumbo v2, "comm"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "filename"

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string/jumbo v2, "flags"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string/jumbo v2, "mode"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string/jumbo v1, "ret"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-object v0
.end method
