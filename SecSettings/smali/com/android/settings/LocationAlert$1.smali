.class Lcom/android/settings/LocationAlert$1;
.super Ljava/lang/Object;
.source "LocationAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    iget-object v1, v1, Lcom/android/settings/LocationAlert;->checkoption:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    iget-object v1, v1, Lcom/android/settings/LocationAlert;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_again"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    invoke-virtual {v1}, Lcom/android/settings/LocationAlert;->doNotShowAgain()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    invoke-virtual {v1}, Lcom/android/settings/LocationAlert;->BroadCastUpdateWidget()V

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    # invokes: Lcom/android/settings/LocationAlert;->OnGps()V
    invoke-static {v1}, Lcom/android/settings/LocationAlert;->access$000(Lcom/android/settings/LocationAlert;)V

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/LocationAlert;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/LocationAlert$1;->this$0:Lcom/android/settings/LocationAlert;

    invoke-virtual {v1}, Lcom/android/settings/LocationAlert;->finish()V

    return-void
.end method
