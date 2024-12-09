.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field public final synthetic val$enabledCocktailList:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->val$enabledCocktailList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->val$enabledCocktailList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$4;->val$enabledCocktailList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
