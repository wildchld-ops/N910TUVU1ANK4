.class Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;
.super Landroid/database/ContentObserver;
.source "SideKeyQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SideKeyObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "STATUSBAR-SideKeyQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideKeyQuickSettingButton.onChange() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;->getSideKeyEnabled()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;->getSideKeyEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton$SideKeyObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SideKeyQuickSettingButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
