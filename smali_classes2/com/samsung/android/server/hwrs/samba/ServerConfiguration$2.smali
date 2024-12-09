.class Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;
.super Ljava/util/HashMap;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;

.field final synthetic val$aGroupName:Ljava/lang/String;

.field final synthetic val$aMaxConnections:Ljava/lang/String;

.field final synthetic val$aResPath:Ljava/lang/String;

.field final synthetic val$aUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->this$0:Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aResPath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aUserName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aGroupName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;->val$aMaxConnections:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p1, "path"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string p1, "force user"

    .line 21
    .line 22
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "force group"

    .line 26
    .line 27
    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "max connections"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string/jumbo p1, "read only"

    .line 37
    .line 38
    .line 39
    const-string/jumbo p2, "no"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method
