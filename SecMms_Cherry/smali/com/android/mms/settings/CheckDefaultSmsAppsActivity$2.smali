.class Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;
.super Ljava/lang/Object;
.source "CheckDefaultSmsAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->initResourceLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    const-string v2, "Cancel do not use deafult app"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$100(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0473

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$200(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mNeedResultCode:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$300(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setDefault"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_running"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v6, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsFromScover:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$500(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sput-boolean v6, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v6, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    :cond_3
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
