.class Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;
.super Landroid/database/ContentObserver;
.source "NetworkBoosterQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoosterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;Z)Z

    const-string v0, "STATUSBAR-NetworkBoosterQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkBoosterObserver onChange() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsWfcRegistered:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsAirpalneOn:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(II)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(II)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
