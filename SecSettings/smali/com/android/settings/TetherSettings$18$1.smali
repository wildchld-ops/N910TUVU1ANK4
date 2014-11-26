.class Lcom/android/settings/TetherSettings$18$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TetherSettings$18;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings$18;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$18$1;->this$1:Lcom/android/settings/TetherSettings$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TetherSettings$18$1;->this$1:Lcom/android/settings/TetherSettings$18;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$18;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$18$1;->this$1:Lcom/android/settings/TetherSettings$18;

    iget-object v0, v0, Lcom/android/settings/TetherSettings$18;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0
.end method
