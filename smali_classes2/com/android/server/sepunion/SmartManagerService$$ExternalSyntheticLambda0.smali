.class public final synthetic Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
