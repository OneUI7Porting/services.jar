.class public final synthetic Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/Associations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/Associations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    .line 2
    .line 3
    check-cast p1, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "state"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "persistence-version"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "associations"

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 58
    .line 59
    const-string/jumbo v6, "association"

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    const-string/jumbo v9, "id"

    .line 71
    .line 72
    .line 73
    invoke-static {v7, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v8, "profile"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v8, "package"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v8, "tag"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTag()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v8, "mac_address"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v8, "display_name"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v8, "self_managed"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v8, "notify_device_nearby"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v8, "revoked"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v8, "pending"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isPending()Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v8, "time_approved"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 174
    .line 175
    .line 176
    const-string/jumbo v8, "last_time_connected"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 184
    .line 185
    .line 186
    const-string/jumbo v8, "system_data_sync_flags"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v7, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_0
    iget p0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 202
    .line 203
    const-string/jumbo v4, "max-id"

    .line 204
    .line 205
    .line 206
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .line 211
    .line 212
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 216
    .line 217
    .line 218
    return-void
.end method
