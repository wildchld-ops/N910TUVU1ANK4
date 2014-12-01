.class Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "ToddlerModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ToddlerModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$300(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$300(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$ToddlerModeObserver;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method
