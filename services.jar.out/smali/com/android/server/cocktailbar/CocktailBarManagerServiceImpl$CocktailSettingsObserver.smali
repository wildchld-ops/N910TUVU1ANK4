.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CocktailSettingsObserver"
.end annotation


# instance fields
.field mLastEnabled:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->mLastEnabled:Ljava/lang/String;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$000(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cocktail_bar_enabled_cocktails"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mUserId:I
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()V
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->mLastEnabled:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailSettingsObserver;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFromSettingsLocked()V
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
