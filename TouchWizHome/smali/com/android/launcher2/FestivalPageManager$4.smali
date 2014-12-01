.class Lcom/android/launcher2/FestivalPageManager$4;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FestivalPageManager;->drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FestivalPageManager;

.field final synthetic val$festivalKey:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iput p2, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->access$000()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "data_charging_checkbox"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    # invokes: Lcom/android/launcher2/FestivalPageManager;->checkNetwork()I
    invoke-static {v2}, Lcom/android/launcher2/FestivalPageManager;->access$100(Lcom/android/launcher2/FestivalPageManager;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V
    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->access$300(Lcom/android/launcher2/FestivalPageManager;I)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/FestivalPageManager;->access$200(Lcom/android/launcher2/FestivalPageManager;II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/FestivalPageManager;->access$200(Lcom/android/launcher2/FestivalPageManager;II)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V
    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->access$300(Lcom/android/launcher2/FestivalPageManager;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V
    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->access$400(Lcom/android/launcher2/FestivalPageManager;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$4;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$4;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V
    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->access$400(Lcom/android/launcher2/FestivalPageManager;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
