.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    .line 14
    if-ne v1, v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p1, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    :goto_1
    if-ltz v2, :cond_1

    .line 45
    .line 46
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 55
    .line 56
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 57
    .line 58
    if-ne v3, p0, :cond_0

    .line 59
    .line 60
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 p0, 0x0

    .line 70
    :goto_2
    return-object p0

    .line 71
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 72
    .line 73
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 74
    .line 75
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 78
    .line 79
    if-ne v1, v0, :cond_6

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x0

    .line 90
    move v2, v1

    .line 91
    :goto_3
    if-ge v2, v0, :cond_6

    .line 92
    .line 93
    iget-object v3, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 100
    .line 101
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    move v5, v1

    .line 108
    :goto_4
    if-ge v5, v4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/util/ArrayList;

    .line 115
    .line 116
    move v7, v1

    .line 117
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-ge v7, v8, :cond_4

    .line 122
    .line 123
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 128
    .line 129
    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 130
    .line 131
    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 132
    .line 133
    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 134
    .line 135
    if-ne v8, p0, :cond_3

    .line 136
    .line 137
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    const/4 p0, 0x0

    .line 150
    :goto_6
    return-object p0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
