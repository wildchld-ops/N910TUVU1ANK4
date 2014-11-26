.class Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;
.super Landroid/database/ContentObserver;
.source "EbookQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EbookModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1    # Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "STATUSBAR-E-BookSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-BookModeObserver.onChange() - DB_E-BOOK_MODE_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "e_reading_display_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$EbookModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
