.class public abstract Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "app-op"

    .line 2
    .line 3
    return-object p0
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;->persistence:Lcom/android/server/permission/access/appop/BaseAppOpPersistence;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appop/BaseAppOpPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
