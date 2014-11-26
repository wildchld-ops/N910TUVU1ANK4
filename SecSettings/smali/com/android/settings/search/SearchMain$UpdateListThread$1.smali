.class Lcom/android/settings/search/SearchMain$UpdateListThread$1;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/SearchMain$UpdateListThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain$UpdateListThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SearchMain$UpdateListThread$1;->this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # getter for: Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    # getter for: Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$100()Lcom/android/settings/search/SettingSearchManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    # getter for: Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;
    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$102(Lcom/android/settings/search/SettingSearchManager;)Lcom/android/settings/search/SettingSearchManager;

    :cond_0
    # getter for: Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    # setter for: Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$302(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    # getter for: Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$100()Lcom/android/settings/search/SettingSearchManager;

    move-result-object v0

    # getter for: Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/search/SearchMain$UpdateListThread$1;->this$1:Lcom/android/settings/search/SearchMain$UpdateListThread;

    iget-object v0, v0, Lcom/android/settings/search/SearchMain$UpdateListThread;->this$0:Lcom/android/settings/search/SearchMain;

    # getter for: Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$300()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/search/SearchMain;->access$400(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
