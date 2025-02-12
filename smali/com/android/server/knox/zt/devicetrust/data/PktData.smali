.class public final Lcom/android/server/knox/zt/devicetrust/data/PktData;
.super Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final dstAddr:Ljava/lang/String;

.field public final dstPort:I

.field public final fingerprint:Ljava/lang/String;

.field public final srcAddr:Ljava/lang/String;

.field public final srcPort:I

.field public final type:I


# direct methods
.method public constructor <init>(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;-><init>(IJI)V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p7, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 11
    .line 12
    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 13
    .line 14
    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    .line 15
    .line 16
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 23
    .line 24
    const-string/jumbo v2, "uid"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "type"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "fingerprint"

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "saddr"

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "daddr"

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "sport"

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "dport"

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
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
    const-string/jumbo v1, "uid"

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "type"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "fingerprint"

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "saddr"

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "daddr"

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "sport"

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "dport"

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 12

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
    iget v3, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 16
    .line 17
    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 18
    .line 19
    iget v9, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    invoke-virtual {p0, v10}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string/jumbo v10, "when : "

    .line 27
    .line 28
    .line 29
    const-string v11, " | what : "

    .line 30
    .line 31
    invoke-static {v2, v10, v0, v1, v11}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, " | uid : "

    .line 36
    .line 37
    const-string v2, " | type : "

    .line 38
    .line 39
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 40
    .line 41
    .line 42
    const-string v1, " | fingerprint : "

    .line 43
    .line 44
    const-string v2, " | saddr : "

    .line 45
    .line 46
    invoke-static {v0, v1, v5, v2, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, " | daddr : "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " | sport : "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " | dport : "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "uid"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "type"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "fingerprint"

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "saddr"

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "daddr"

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "sport"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    .line 91
    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string/jumbo v1, "dport"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-object v0
.end method
