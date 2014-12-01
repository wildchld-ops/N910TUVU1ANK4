.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonEditObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    return-void
.end method
