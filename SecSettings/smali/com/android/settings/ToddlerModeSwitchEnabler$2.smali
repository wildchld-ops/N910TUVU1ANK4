.class Lcom/android/settings/ToddlerModeSwitchEnabler$2;
.super Ljava/lang/Object;
.source "ToddlerModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ToddlerModeSwitchEnabler;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const-string v0, "ToddlerModeSwitchEnabler"

    const-string v1, "showConfirmPopup() - Negative onKey mode: ok"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$100(Lcom/android/settings/ToddlerModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$300(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$300(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$2;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_2
    return v2
.end method
