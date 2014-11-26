.class Lcom/android/mms/settings/FreeMessageSettings$1;
.super Ljava/lang/Object;
.source "FreeMessageSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/FreeMessageSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/FreeMessageSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/FreeMessageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v1, v1, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/mms/ui/MessageUtils;->setComponentFreeMessage(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v1, v1, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_freemessage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, p2, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-virtual {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->showChangeProgressDialog(Z)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-virtual {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->startChangeFreeMessageStatusProgressDialogDismissTimer(Z)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # invokes: Lcom/android/mms/settings/FreeMessageSettings;->logInOutFreeMessage(Z)V
    invoke-static {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->access$000(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-virtual {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->showChangeProgressDialog(Z)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    invoke-virtual {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->startChangeFreeMessageStatusProgressDialogDismissTimer(Z)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings$1;->this$0:Lcom/android/mms/settings/FreeMessageSettings;

    # invokes: Lcom/android/mms/settings/FreeMessageSettings;->logInOutFreeMessage(Z)V
    invoke-static {v1, p2}, Lcom/android/mms/settings/FreeMessageSettings;->access$000(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    goto :goto_0
.end method
