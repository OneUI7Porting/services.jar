.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mPackages:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    const-string/jumbo v2, "p"

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string/jumbo v3, "pn"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object/from16 v4, p0

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    :cond_1
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    const-string/jumbo v6, "o"

    .line 51
    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const-string/jumbo v6, "op"

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v3, v6}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    :cond_2
    :goto_1
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    const-string v8, "a"

    .line 85
    .line 86
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    const-string/jumbo v8, "at"

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v6, v8}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    :cond_3
    :goto_2
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_5

    .line 116
    .line 117
    const-string/jumbo v10, "e"

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_3

    .line 129
    .line 130
    const-string/jumbo v10, "nt"

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v2, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    const-string/jumbo v10, "nd"

    .line 138
    .line 139
    .line 140
    const-wide/16 v11, -0x1

    .line 141
    .line 142
    invoke-interface {v0, v2, v10, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 143
    .line 144
    .line 145
    move-result-wide v16

    .line 146
    const-string/jumbo v10, "us"

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v2, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    const-string/jumbo v10, "f"

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v2, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    const-string v10, "af"

    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    invoke-interface {v0, v2, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    move-result v18

    .line 167
    const-string/jumbo v10, "ci"

    .line 168
    .line 169
    .line 170
    const/4 v11, -0x1

    .line 171
    invoke-interface {v0, v2, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v19

    .line 175
    add-long v10, v14, v16

    .line 176
    .line 177
    cmp-long v10, v10, p2

    .line 178
    .line 179
    if-gez v10, :cond_4

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    new-instance v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 183
    .line 184
    move-object v11, v10

    .line 185
    invoke-direct/range {v11 .. v19}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_5
    new-instance v9, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    move-object/from16 v4, p0

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_7
    return-void
.end method

.method public final getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method