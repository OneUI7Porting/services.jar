.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;
.super Lcom/android/server/textservices/TextServicesManagerInternal;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 4
    .line 5
    sget v0, Lcom/android/server/textservices/TextServicesManagerService;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
