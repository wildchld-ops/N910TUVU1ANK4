.class Lcom/android/settings/safetycare/SafetyCareSettings$1$2;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareSettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/safetycare/SafetyCareSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1$2;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1$2;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$1;

    iget-object v2, v2, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$200(Lcom/android/settings/safetycare/SafetyCareSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from_safety_setting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$1$2;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$1;

    iget-object v2, v2, Lcom/android/settings/safetycare/SafetyCareSettings$1;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
