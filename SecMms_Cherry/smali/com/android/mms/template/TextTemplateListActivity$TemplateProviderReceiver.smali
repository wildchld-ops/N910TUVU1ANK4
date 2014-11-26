.class Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextTemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateProviderReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p2    # Lcom/android/mms/template/TextTemplateListActivity$1;

    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->mIsRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.mms.UPDATED_TEMPLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/TextTemplateListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$100(Lcom/android/mms/template/TextTemplateListActivity;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->mIsRegistered:Z

    return-void
.end method
