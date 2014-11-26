.class Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;
.super Landroid/database/ContentObserver;
.source "VolteQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "STATUSBAR-VolteQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$VolteObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->getVoLTEEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
