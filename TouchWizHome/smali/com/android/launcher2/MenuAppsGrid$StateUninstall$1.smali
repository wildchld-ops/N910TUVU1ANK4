.class Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->access$5100(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->access$5100(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
