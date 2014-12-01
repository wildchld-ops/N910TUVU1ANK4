.class Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;
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

    iput-object p1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use deafult app mIsOpened="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z
    invoke-static {v3}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$000(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    # getter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z
    invoke-static {v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$000(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z
    invoke-static {v1, v2}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->access$002(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;->this$0:Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    const/16 v2, 0x2329

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
